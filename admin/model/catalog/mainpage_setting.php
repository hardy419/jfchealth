<?php
class ModelCatalogMainpageSetting extends Model {

	public function editSetting($setting_id, $data) {
		$this->db->query("UPDATE `" . DB_PREFIX . "main_setting` SET value = '" . $this->db->escape($data['value']) . "'");
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

    public function getCourseName($course_id) {
        $query = $this->db->query("SELECT c.date, cd.name FROM oc_course c LEFT JOIN oc_course_description cd ON c.course_id=cd.course_id WHERE c.course_id = '" . (int)$course_id . "' AND cd.language_id = '" . (int)$this->config->get('config_language_id') . "'");
        return $query->row['name'].' '.$query->row['date'];
    }
}
?>