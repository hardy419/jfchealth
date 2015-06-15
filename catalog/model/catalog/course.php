<?php
class ModelCatalogCourse extends Model {

	public function getCourses($data = array()) {
		/*if ($this->customer->isLogged()) {
			$customer_group_id = $this->customer->getCustomerGroupId();
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}	*/

        $sql = "SELECT * FROM " . DB_PREFIX . "course c LEFT JOIN " . DB_PREFIX . "course_description cd ON c.course_id=cd.course_id WHERE cd.language_id = '" . (int)$this->config->get('config_language_id') . "' AND c.status=1";

		$sort_data = array(
			'cd.name',
			'c.date',
			'c.course_id',
			'c.time'
		);	

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY c.sort_order";	
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC, LCASE(cd.name) DESC";
		} else {
			$sql .= " ASC, LCASE(cd.name) ASC";
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

		$course_data = array();

		$query = $this->db->query($sql);

		return $query->rows;
	}

	public function getTotalCourses($data = array()) {
		/*if ($this->customer->isLogged()) {
			$customer_group_id = $this->customer->getCustomerGroupId();
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}*/

        $sql = "SELECT  COUNT(DISTINCT c.course_id) AS total FROM " . DB_PREFIX . "course c LEFT JOIN " . DB_PREFIX . "course_description cd ON c.course_id=cd.course_id WHERE cd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		$query = $this->db->query($sql);

		return $query->row['total'];
	}

    public function getCourseNumSeats($cid) {
		$sql = "SELECT seats FROM " . DB_PREFIX . "course WHERE course_id = " . (int)$cid;

		$query = $this->db->query($sql);

		return $query->row['seats'];
    }

	public function addCourseCustomer($data) {
		$this->db->query("INSERT INTO " . DB_PREFIX . "course_customer SET course_id = " . (int)$data['course_id'] . ", name = '" . $this->db->escape($data['name']) . "', phone = '" . $this->db->escape($data['phone']) . "', email = '" . $this->db->escape($data['email']) . "', member_name = '" . $this->db->escape($data['member_name']) . "', addtime = NOW()");
	}

	public function getTotalCourseCustomer($cid) {
		$sql = "SELECT COUNT(DISTINCT course_customer_id) AS total FROM " . DB_PREFIX . "course_customer WHERE course_id = " . (int)$cid;

		$query = $this->db->query($sql);

		return $query->row['total'];
	}	
}
?>