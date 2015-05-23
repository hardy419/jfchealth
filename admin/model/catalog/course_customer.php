<?php
class ModelCatalogCourseCustomer extends Model {
	public function addCourseCustomer($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "course_customer SET course_id = " . (int)$data['course_id'] . ", name = '" . $this->db->escape($data['name']) . "', phone = '" . $this->db->escape($data['phone']) . "', email = '" . $this->db->escape($data['email']) . "', member_name = '" . $this->db->escape($data['member_name']) . "', addtime = NOW()");
	}

	public function editCourseCustomer($course_customer_id, $data) {
		$this->db->query("UPDATE " . DB_PREFIX . "course_customer SET course_id = " . (int)$data['course_id'] . ", name = '" . $this->db->escape($data['name']) . "', phone = '" . $this->db->escape($data['phone']) . "', email = '" . $this->db->escape($data['email']) . "', member_name = '" . $this->db->escape($data['member_name']) . "' WHERE course_customer_id = '" . (int)$course_customer_id . "'");
	}

	public function deleteCourseCustomer($course_customer_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "course_customer WHERE course_customer_id = '" . (int)$course_customer_id . "'");
	}

	public function getCourseCustomer($course_customer_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "course_customer WHERE course_customer_id = '" . (int)$course_customer_id . "'");

		return $query->row;
	}

	public function getCourseCustomers($data = array()) {
		$sql = "SELECT * FROM " . DB_PREFIX . "course_customer" . (isset($data['cid']) ? ' WHERE course_id = ' . $data['cid'] : '') . " GROUP BY course_customer_id";

		$sort_data = array(
			'course_id',
			'name',
			'member_name'
		);	

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];	
		} else {
			$sql .= " ORDER BY course_id";	
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

	public function getTotalCourseCustomer($data = array()) {
		$sql = "SELECT COUNT(DISTINCT course_customer_id) AS total FROM " . DB_PREFIX . "course_customer" . (isset($data['cid']) ? ' WHERE course_id = ' . $data['cid'] : '');

		$query = $this->db->query($sql);

		return $query->row['total'];
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
