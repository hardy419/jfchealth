<?php

function cmp($a, $b) {
	return ($a['sort_order'] < $b['sort_order']) ? -1 : 1;
}

class ModelCatalogMainpageSetting extends Model {

	public function editSetting($setting_id, $data) {
		$this->db->query("DELETE FROM `" . DB_PREFIX . "main_setting_description` WHERE `main_setting_id` = " . (int)$setting_id);
		if (isset($data['news_image'])) {
			foreach ($data['news_image'] as $lang_id=>&$data_lang) {
				usort ($data_lang, 'cmp');
				$images = array ();
				$links = array ();
				foreach ($data_lang as $arr) {
					$images[] = $arr['image'];
					$links[] = $arr['link'];
				}
				$this->db->query("INSERT `" . DB_PREFIX . "main_setting_description` (main_setting_id, language_id, description) VALUES (" . (int)$setting_id . ", " . (int)$lang_id . ", '" . $this->db->escape(implode (',', $images) . ';' . implode (',', $links)) . "')");
			}
		}
		else {
			$this->db->query("UPDATE `" . DB_PREFIX . "main_setting` SET value = '' WHERE `main_setting_id` = " . (int)$setting_id);
		}
	}

	public function getSetting($setting_id) {
		$query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "main_setting` WHERE main_setting_id = '" . (int)$setting_id . "'");

		return $query->row;
	}

	public function getSettings($data = array()) {
		$sql = "SELECT * FROM `" . DB_PREFIX . "main_setting`";

		$sort_data = array(
			'main_setting_id',
			'key',
			'value'
		);	

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];	
		} else {
			$sql .= " ORDER BY main_setting_id";	
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
	}

	public function getTotalSettings() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "main_setting`");

		return $query->row['total'];
	}		

	public function getImages($id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "main_setting s LEFT JOIN " . DB_PREFIX . "main_setting_description sd ON (s.main_setting_id=sd.main_setting_id) WHERE s.main_setting_id = '" . (int)$id . "'");

		return $query->rows;
	}

    public function getCourseName($course_id) {
        $query = $this->db->query("SELECT cd.course_date, cd.name FROM oc_course c LEFT JOIN oc_course_description cd ON c.course_id=cd.course_id WHERE c.course_id = '" . (int)$course_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "'");
        return $query->row['name'].' '.$query->row['course_date'];
    }

	public function getCourses() {
		$sql = "SELECT * FROM " . DB_PREFIX . "course c LEFT JOIN " . DB_PREFIX . "course_description cd ON (c.course_id = cd.course_id)";

		$sql .= " WHERE cd.language_id = '" . (int)$this->config->get('config_language_id') . "'"; 

		$sql .= " GROUP BY c.course_id";

		$sql .= " ORDER BY c.date DESC";

		$query = $this->db->query($sql);

		return $query->rows;
	}
}
?>