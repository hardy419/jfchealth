<?php
class ModelCatalogNews extends Model {
	public function addNews($data, $type) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "news SET type = " . (int)$type . ", info = '" . $this->db->escape($data['info']) . "', filename = '" . $this->db->escape($data['filename']) . "', status = '" . (int)$data['status'] . "', sort_order = '" . (int)$data['sort_order'] . "', time = NOW(), date_added = CURDATE()");

		$news_id = $this->db->getLastId();

		file_put_contents(DIR_DOWNLOAD.'news/id',(int)$news_id + 1);
		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "news SET image = '" . $this->db->escape(html_entity_decode($data['image'], ENT_QUOTES, 'UTF-8')) . "' WHERE news_id = '" . (int)$news_id . "'");
		}

		foreach ($data['news_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "news_description SET news_id = '" . (int)$news_id . "', language_id = '" . (int)$language_id . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "', infod = '" . $this->db->escape($value['infod']) . "'");
		}

		if (isset($data['news_image'])) {
			foreach ($data['news_image'] as $news_image) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "news_image SET news_id = '" . (int)$news_id . "', image = '" . $this->db->escape(html_entity_decode($news_image['image'], ENT_QUOTES, 'UTF-8')) . "', sort_order = '" . (int)$news_image['sort_order'] . "'");
			}
		}

		$this->cache->delete('news');
	}

	public function editNews($news_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "news SET info = '" . $this->db->escape($data['info']) . "', filename = '" . $this->db->escape($data['filename']) . "', status = '" . (int)$data['status'] . "', sort_order = '" . (int)$data['sort_order'] . "' WHERE news_id = '" . (int)$news_id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "news SET image = '" . $this->db->escape(html_entity_decode($data['image'], ENT_QUOTES, 'UTF-8')) . "' WHERE news_id = '" . (int)$news_id . "'");
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "news_description WHERE news_id = '" . (int)$news_id . "'");

		foreach ($data['news_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "news_description SET news_id = '" . (int)$news_id . "', language_id = '" . (int)$language_id . "', title = '" . $this->db->escape($value['title']) . "', description = '" . $this->db->escape($value['description']) . "', infod = '" . $this->db->escape($value['infod']) . "'");
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "news_image WHERE news_id = '" . (int)$news_id . "'");

		if (isset($data['news_image'])) {
			foreach ($data['news_image'] as $news_image) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "news_image SET news_id = '" . (int)$news_id . "', image = '" . $this->db->escape(html_entity_decode($news_image['image'], ENT_QUOTES, 'UTF-8')) . "', sort_order = '" . (int)$news_image['sort_order'] . "'");
			}
		}

        $this->cache->delete('news');
	}

	public function copyNews($news_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "news p LEFT JOIN " . DB_PREFIX . "news_description pd ON (p.news_id = pd.news_id) WHERE p.news_id = '" . (int)$news_id . "' AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		if ($query->num_rows) {
			$data = array();

			$data = $query->row;

			$data['status'] = '0';

			$data = array_merge($data, array('news_description' => $this->getNewsDescriptions($news_id)));
			$data = array_merge($data, array('news_image' => $this->getNewsImages($news_id)));		
			$this->addNews($data);
		}
	}

	public function deleteNews($news_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "news WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_description WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_image WHERE news_id = '" . (int)$news_id . "'");
/*
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_attribute WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_discount WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_filter WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_option WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_option_value WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_related WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_related WHERE related_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_reward WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_special WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_to_category WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_to_download WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_to_layout WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "news_to_store WHERE news_id = '" . (int)$news_id . "'");
		$this->db->query("DELETE FROM `" . DB_PREFIX . "news_profile` WHERE `news_id` = " . (int)$news_id);
		$this->db->query("DELETE FROM " . DB_PREFIX . "review WHERE news_id = '" . (int)$news_id . "'");
*/

		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'news_id=" . (int)$news_id. "'");

		$this->cache->delete('news');
	}

	public function getNewsItem($news_id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'news_id=" . (int)$news_id . "') AS keyword FROM " . DB_PREFIX . "news p LEFT JOIN " . DB_PREFIX . "news_description pd ON (p.news_id = pd.news_id) WHERE p.news_id = '" . (int)$news_id . "' AND pd.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		return $query->row;
	}

	public function getNewsItems($data = array(), $type) {
		$sql = "SELECT * FROM " . DB_PREFIX . "news n LEFT JOIN " . DB_PREFIX . "news_description nd ON (n.news_id = nd.news_id)";

		$sql .= " WHERE n.type = " . (int)$type . " AND nd.language_id = '" . (int)$this->config->get('config_language_id') . "'"; 

		$sql .= " GROUP BY n.news_id";

		$sort_data = array(
			'nd.title',
			'n.status',
			'n.sort_order'
		);	

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];	
		} else {
			$sql .= " ORDER BY nd.title";	
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC";
		} else {
			$sql .= " ASC";
		}

		if (isset($data['start']) || isset($data['limit'])) {
			if ($data['start'] < 0) {
				$data['start'] = 0;
			}				

			if ($data['limit'] < 1) {
				$data['limit'] = 20;
			}	

			$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
		}	

		$query = $this->db->query($sql);

		return $query->rows;
        //return $sql;
	}

	public function getNewsDescriptions($news_id) {
		$news_description_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_description WHERE news_id = '" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_description_data[$result['language_id']] = array(
				'title'             => $result['title'],
				'description'      => $result['description'],
				'infod'      => $result['infod'],
			);
		}

		return $news_description_data;
	}
	public function getNewsImages($news_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_image WHERE news_id = '" . (int)$news_id . "'");

		return $query->rows;
	}
/*
	public function getNewsCategories($news_id) {
		$news_category_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_to_category WHERE news_id = '" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_category_data[] = $result['category_id'];
		}

		return $news_category_data;
	}

	public function getNewsFilters($news_id) {
		$news_filter_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_filter WHERE news_id = '" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_filter_data[] = $result['filter_id'];
		}

		return $news_filter_data;
	}

	public function getNewsAttributes($news_id) {
		$news_attribute_data = array();

		$news_attribute_query = $this->db->query("SELECT attribute_id FROM " . DB_PREFIX . "news_attribute WHERE news_id = '" . (int)$news_id . "' GROUP BY attribute_id");

		foreach ($news_attribute_query->rows as $news_attribute) {
			$news_attribute_description_data = array();

			$news_attribute_description_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_attribute WHERE news_id = '" . (int)$news_id . "' AND attribute_id = '" . (int)$news_attribute['attribute_id'] . "'");

			foreach ($news_attribute_description_query->rows as $news_attribute_description) {
				$news_attribute_description_data[$news_attribute_description['language_id']] = array('text' => $news_attribute_description['text']);
			}

			$news_attribute_data[] = array(
				'attribute_id'                  => $news_attribute['attribute_id'],
				'news_attribute_description' => $news_attribute_description_data
			);
		}

		return $news_attribute_data;
	}

	public function getNewsOptions($news_id) {
		$news_option_data = array();

		$news_option_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "news_option` po LEFT JOIN `" . DB_PREFIX . "option` o ON (po.option_id = o.option_id) LEFT JOIN `" . DB_PREFIX . "option_description` od ON (o.option_id = od.option_id) WHERE po.news_id = '" . (int)$news_id . "' AND od.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		foreach ($news_option_query->rows as $news_option) {
			$news_option_value_data = array();	

			$news_option_value_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_option_value WHERE news_option_id = '" . (int)$news_option['news_option_id'] . "'");

			foreach ($news_option_value_query->rows as $news_option_value) {
				$news_option_value_data[] = array(
					'news_option_value_id' => $news_option_value['news_option_value_id'],
					'option_value_id'         => $news_option_value['option_value_id'],
					'quantity'                => $news_option_value['quantity'],
					'subtract'                => $news_option_value['subtract'],
					'price'                   => $news_option_value['price'],
					'price_prefix'            => $news_option_value['price_prefix'],
					'points'                  => $news_option_value['points'],
					'points_prefix'           => $news_option_value['points_prefix'],						
					'weight'                  => $news_option_value['weight'],
					'weight_prefix'           => $news_option_value['weight_prefix']					
				);
			}

			$news_option_data[] = array(
				'news_option_id'    => $news_option['news_option_id'],
				'option_id'            => $news_option['option_id'],
				'name'                 => $news_option['name'],
				'type'                 => $news_option['type'],			
				'news_option_value' => $news_option_value_data,
				'option_value'         => $news_option['option_value'],
				'required'             => $news_option['required']				
			);
		}

		return $news_option_data;
	}
	public function getNewsDiscounts($news_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_discount WHERE news_id = '" . (int)$news_id . "' ORDER BY quantity, priority, price");

		return $query->rows;
	}

	public function getNewsSpecials($news_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_special WHERE news_id = '" . (int)$news_id . "' ORDER BY priority, price");

		return $query->rows;
	}

	public function getNewsRewards($news_id) {
		$news_reward_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_reward WHERE news_id = '" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_reward_data[$result['customer_group_id']] = array('points' => $result['points']);
		}

		return $news_reward_data;
	}

	public function getNewsDownloads($news_id) {
		$news_download_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_to_download WHERE news_id = '" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_download_data[] = $result['download_id'];
		}

		return $news_download_data;
	}

	public function getNewsStores($news_id) {
		$news_store_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_to_store WHERE news_id = '" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_store_data[] = $result['store_id'];
		}

		return $news_store_data;
	}

	public function getNewsLayouts($news_id) {
		$news_layout_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_to_layout WHERE news_id = '" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_layout_data[$result['store_id']] = $result['layout_id'];
		}

		return $news_layout_data;
	}

	public function getNewsRelated($news_id) {
		$news_related_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "news_related WHERE news_id = '" . (int)$news_id . "'");

		foreach ($query->rows as $result) {
			$news_related_data[] = $result['related_id'];
		}

		return $news_related_data;
	}

	public function getProfiles($news_id) {
		return $this->db->query("SELECT * FROM `" . DB_PREFIX . "news_profile` WHERE news_id = " . (int)$news_id)->rows;
	}
*/
	public function getTotalNews($data = array(), $type) {
		$sql = "SELECT COUNT(DISTINCT news_id) AS total FROM " . DB_PREFIX . "news WHERE type = ".(int)$type;

		$query = $this->db->query($sql);

		return $query->row['total'];
	}	
/*
	public function getTotalNewsItemsByTaxClassId($tax_class_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "news WHERE tax_class_id = '" . (int)$tax_class_id . "'");

		return $query->row['total'];
	}

	public function getTotalNewsItemsByStockStatusId($stock_status_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "news WHERE stock_status_id = '" . (int)$stock_status_id . "'");

		return $query->row['total'];
	}

	public function getTotalNewsItemsByWeightClassId($weight_class_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "news WHERE weight_class_id = '" . (int)$weight_class_id . "'");

		return $query->row['total'];
	}

	public function getTotalNewsItemsByLengthClassId($length_class_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "news WHERE length_class_id = '" . (int)$length_class_id . "'");

		return $query->row['total'];
	}

	public function getTotalNewsItemsByDownloadId($download_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "news_to_download WHERE download_id = '" . (int)$download_id . "'");

		return $query->row['total'];
	}

	public function getTotalNewsItemsByManufacturerId($manufacturer_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "news WHERE manufacturer_id = '" . (int)$manufacturer_id . "'");

		return $query->row['total'];
	}

	public function getTotalNewsItemsByAttributeId($attribute_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "news_attribute WHERE attribute_id = '" . (int)$attribute_id . "'");

		return $query->row['total'];
	}	

	public function getTotalNewsItemsByOptionId($option_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "news_option WHERE option_id = '" . (int)$option_id . "'");

		return $query->row['total'];
	}	

	public function getTotalNewsItemsByLayoutId($layout_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "news_to_layout WHERE layout_id = '" . (int)$layout_id . "'");

		return $query->row['total'];
	}
*/
}
?>
