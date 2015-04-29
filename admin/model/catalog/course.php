<?php
class ModelCatalogCourse extends Model {
	public function addCourse($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "course SET status = '" . (int)$data['status'] . "', sort_order = '" . (int)$data['sort_order'] . "', time = NOW(), date = CURDATE(), time_period = '" . $data['time_period'] . "', seats = '" . (int)$data['seats'] . "', phone = '" . $data['phone'] . "'");

		$course_id = $this->db->getLastId();

		file_put_contents(DIR_DOWNLOAD.'course/id',(int)$course_id + 1);
		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "course SET image = '" . $this->db->escape(html_entity_decode($data['image'], ENT_QUOTES, 'UTF-8')) . "' WHERE course_id = '" . (int)$course_id . "'");
		}

		foreach ($data['course_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "course_description SET course_id = '" . (int)$course_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "', course_date = '" . $this->db->escape($value['course_date']) . "', location = '" . $this->db->escape($value['location']) . "', speaker = '" . $this->db->escape($value['speaker']) . "'");
		}

		$this->cache->delete('course');
	}

	public function editCourse($course_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "course SET status = '" . (int)$data['status'] . "', sort_order = '" . (int)$data['sort_order'] . "', date = '" . $data['date'] . "', time_period = '" . $data['time_period'] . "', seats = '" . (int)$data['seats'] . "', phone = '" . $data['phone'] . "' WHERE course_id = '" . (int)$course_id . "'");

		if (isset($data['image'])) {
			$this->db->query("UPDATE " . DB_PREFIX . "course SET image = '" . $this->db->escape(html_entity_decode($data['image'], ENT_QUOTES, 'UTF-8')) . "' WHERE course_id = '" . (int)$course_id . "'");
		}

		$this->db->query("DELETE FROM " . DB_PREFIX . "course_description WHERE course_id = '" . (int)$course_id . "'");

		foreach ($data['course_description'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "course_description SET course_id = '" . (int)$course_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "', course_date = '" . $this->db->escape($value['course_date']) . "', location = '" . $this->db->escape($value['location']) . "', speaker = '" . $this->db->escape($value['speaker']) . "'");
		}

        $this->cache->delete('course');
	}

	public function copyCourse($course_id) {
		$query = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "course c LEFT JOIN " . DB_PREFIX . "course_description cd ON (c.course_id = cd.course_id) WHERE c.course_id = '" . (int)$course_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		if ($query->num_rows) {
			$data = array();

			$data = $query->row;

			$data['status'] = '0';

			$data = array_merge($data, array('course_description' => $this->getCourseDescriptions($course_id)));
			$this->addCourse($data);
		}
	}

	public function deleteCourse($course_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "course WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_description WHERE course_id = '" . (int)$course_id . "'");
/*		$this->db->query("DELETE FROM " . DB_PREFIX . "course_image WHERE course_id = '" . (int)$course_id . "'");

		$this->db->query("DELETE FROM " . DB_PREFIX . "course_attribute WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_discount WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_filter WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_option WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_option_value WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_related WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_related WHERE related_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_reward WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_special WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_to_category WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_to_download WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_to_layout WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_to_store WHERE course_id = '" . (int)$course_id . "'");
		$this->db->query("DELETE FROM `" . DB_PREFIX . "course_profile` WHERE `course_id` = " . (int)$course_id);
		$this->db->query("DELETE FROM " . DB_PREFIX . "review WHERE course_id = '" . (int)$course_id . "'");
*/

		$this->db->query("DELETE FROM " . DB_PREFIX . "url_alias WHERE query = 'course_id=" . (int)$course_id. "'");

		$this->cache->delete('course');
	}

	public function getCourse($course_id) {
		$query = $this->db->query("SELECT DISTINCT *, (SELECT keyword FROM " . DB_PREFIX . "url_alias WHERE query = 'course_id=" . (int)$course_id . "') AS keyword FROM " . DB_PREFIX . "course c LEFT JOIN " . DB_PREFIX . "course_description cd ON (c.course_id = cd.course_id) WHERE c.course_id = '" . (int)$course_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		return $query->row;
	}

	public function getCourses($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "course c LEFT JOIN " . DB_PREFIX . "course_description cd ON (c.course_id = cd.course_id)";

		$sql .= " WHERE cd.language_id = '" . (int)$this->config->get('config_language_id') . "'"; 

		$sql .= " GROUP BY c.course_id";

		$sort_data = array(
			'cd.name',
			'c.status',
			'c.sort_order'
		);	

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];	
		} else {
			$sql .= " ORDER BY cd.name";	
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

	public function getCourseDescriptions($course_id) {
		$course_description_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_description WHERE course_id = '" . (int)$course_id . "'");

		foreach ($query->rows as $result) {
			$course_description_data[$result['language_id']] = array(
				'name'             => $result['name'],
				'course_date'      => $result['course_date'],
				'location'         => $result['location'],
				'speaker'          => $result['speaker']
			);
		}

		return $course_description_data;
	}
/*	public function getCourseImages($course_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_image WHERE course_id = '" . (int)$course_id . "'");

		return $query->rows;
	}

	public function getCourseCategories($course_id) {
		$course_category_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_to_category WHERE course_id = '" . (int)$course_id . "'");

		foreach ($query->rows as $result) {
			$course_category_data[] = $result['category_id'];
		}

		return $course_category_data;
	}

	public function getCourseFilters($course_id) {
		$course_filter_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_filter WHERE course_id = '" . (int)$course_id . "'");

		foreach ($query->rows as $result) {
			$course_filter_data[] = $result['filter_id'];
		}

		return $course_filter_data;
	}

	public function getCourseAttributes($course_id) {
		$course_attribute_data = array();

		$course_attribute_query = $this->db->query("SELECT attribute_id FROM " . DB_PREFIX . "course_attribute WHERE course_id = '" . (int)$course_id . "' GROUP BY attribute_id");

		foreach ($course_attribute_query->rows as $course_attribute) {
			$course_attribute_description_data = array();

			$course_attribute_description_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_attribute WHERE course_id = '" . (int)$course_id . "' AND attribute_id = '" . (int)$course_attribute['attribute_id'] . "'");

			foreach ($course_attribute_description_query->rows as $course_attribute_description) {
				$course_attribute_description_data[$course_attribute_description['language_id']] = array('text' => $course_attribute_description['text']);
			}

			$course_attribute_data[] = array(
				'attribute_id'                  => $course_attribute['attribute_id'],
				'course_attribute_description' => $course_attribute_description_data
			);
		}

		return $course_attribute_data;
	}

	public function getCourseOptions($course_id) {
		$course_option_data = array();

		$course_option_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "course_option` po LEFT JOIN `" . DB_PREFIX . "option` o ON (po.option_id = o.option_id) LEFT JOIN `" . DB_PREFIX . "option_description` od ON (o.option_id = od.option_id) WHERE po.course_id = '" . (int)$course_id . "' AND od.language_id = '" . (int)$this->config->get('config_language_id') . "'");

		foreach ($course_option_query->rows as $course_option) {
			$course_option_value_data = array();	

			$course_option_value_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_option_value WHERE course_option_id = '" . (int)$course_option['course_option_id'] . "'");

			foreach ($course_option_value_query->rows as $course_option_value) {
				$course_option_value_data[] = array(
					'course_option_value_id' => $course_option_value['course_option_value_id'],
					'option_value_id'         => $course_option_value['option_value_id'],
					'quantity'                => $course_option_value['quantity'],
					'subtract'                => $course_option_value['subtract'],
					'price'                   => $course_option_value['price'],
					'price_prefix'            => $course_option_value['price_prefix'],
					'points'                  => $course_option_value['points'],
					'points_prefix'           => $course_option_value['points_prefix'],						
					'weight'                  => $course_option_value['weight'],
					'weight_prefix'           => $course_option_value['weight_prefix']					
				);
			}

			$course_option_data[] = array(
				'course_option_id'    => $course_option['course_option_id'],
				'option_id'            => $course_option['option_id'],
				'name'                 => $course_option['name'],
				'type'                 => $course_option['type'],			
				'course_option_value' => $course_option_value_data,
				'option_value'         => $course_option['option_value'],
				'required'             => $course_option['required']				
			);
		}

		return $course_option_data;
	}
	public function getCourseDiscounts($course_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_discount WHERE course_id = '" . (int)$course_id . "' ORDER BY quantity, priority, price");

		return $query->rows;
	}

	public function getCourseSpecials($course_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_special WHERE course_id = '" . (int)$course_id . "' ORDER BY priority, price");

		return $query->rows;
	}

	public function getCourseRewards($course_id) {
		$course_reward_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_reward WHERE course_id = '" . (int)$course_id . "'");

		foreach ($query->rows as $result) {
			$course_reward_data[$result['customer_group_id']] = array('points' => $result['points']);
		}

		return $course_reward_data;
	}

	public function getCourseDownloads($course_id) {
		$course_download_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_to_download WHERE course_id = '" . (int)$course_id . "'");

		foreach ($query->rows as $result) {
			$course_download_data[] = $result['download_id'];
		}

		return $course_download_data;
	}

	public function getCourseStores($course_id) {
		$course_store_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_to_store WHERE course_id = '" . (int)$course_id . "'");

		foreach ($query->rows as $result) {
			$course_store_data[] = $result['store_id'];
		}

		return $course_store_data;
	}

	public function getCourseLayouts($course_id) {
		$course_layout_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_to_layout WHERE course_id = '" . (int)$course_id . "'");

		foreach ($query->rows as $result) {
			$course_layout_data[$result['store_id']] = $result['layout_id'];
		}

		return $course_layout_data;
	}

	public function getCourseRelated($course_id) {
		$course_related_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_related WHERE course_id = '" . (int)$course_id . "'");

		foreach ($query->rows as $result) {
			$course_related_data[] = $result['related_id'];
		}

		return $course_related_data;
	}

	public function getProfiles($course_id) {
		return $this->db->query("SELECT * FROM `" . DB_PREFIX . "course_profile` WHERE course_id = " . (int)$course_id)->rows;
	}
*/
	public function getTotalCourse($data = array()) {
		$sql = "SELECT COUNT(DISTINCT course_id) AS total FROM " . DB_PREFIX . "course";

		$query = $this->db->query($sql);

		return $query->row['total'];
	}	
/*
	public function getTotalCoursesByTaxClassId($tax_class_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "course WHERE tax_class_id = '" . (int)$tax_class_id . "'");

		return $query->row['total'];
	}

	public function getTotalCoursesByStockStatusId($stock_status_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "course WHERE stock_status_id = '" . (int)$stock_status_id . "'");

		return $query->row['total'];
	}

	public function getTotalCoursesByWeightClassId($weight_class_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "course WHERE weight_class_id = '" . (int)$weight_class_id . "'");

		return $query->row['total'];
	}

	public function getTotalCoursesByLengthClassId($length_class_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "course WHERE length_class_id = '" . (int)$length_class_id . "'");

		return $query->row['total'];
	}

	public function getTotalCoursesByDownloadId($download_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "course_to_download WHERE download_id = '" . (int)$download_id . "'");

		return $query->row['total'];
	}

	public function getTotalCoursesByManufacturerId($manufacturer_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "course WHERE manufacturer_id = '" . (int)$manufacturer_id . "'");

		return $query->row['total'];
	}

	public function getTotalCoursesByAttributeId($attribute_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "course_attribute WHERE attribute_id = '" . (int)$attribute_id . "'");

		return $query->row['total'];
	}	

	public function getTotalCoursesByOptionId($option_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "course_option WHERE option_id = '" . (int)$option_id . "'");

		return $query->row['total'];
	}	

	public function getTotalCoursesByLayoutId($layout_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "course_to_layout WHERE layout_id = '" . (int)$layout_id . "'");

		return $query->row['total'];
	}
*/
}
?>
