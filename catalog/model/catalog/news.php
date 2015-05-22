<?php
class ModelCatalogNews extends Model {

	public function getNewsItem($news_id) {
		/*if ($this->customer->isLogged()) {
			$customer_group_id = $this->customer->getCustomerGroupId();
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}	*/

        $sql = "SELECT * FROM " . DB_PREFIX . "news n LEFT JOIN " . DB_PREFIX . "news_description nd ON n.news_id=nd.news_id WHERE n.news_id=" . (int)$news_id . " AND nd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		$query = $this->db->query($sql);

		return $query->rows[0];
	}

	public function getNews($data = array(), $type) {
		/*if ($this->customer->isLogged()) {
			$customer_group_id = $this->customer->getCustomerGroupId();
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}	*/

        $sql = "SELECT * FROM " . DB_PREFIX . "news n LEFT JOIN " . DB_PREFIX . "news_description nd ON n.news_id=nd.news_id WHERE n.type = " . (int)$type . " AND nd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		$sort_data = array(
			'nd.title',
			'n.date_added',
			'n.course_id',
			'n.time'
		);	

		if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
			$sql .= " ORDER BY " . $data['sort'];
		} else {
			$sql .= " ORDER BY n.sort_order";	
		}

		if (isset($data['order']) && ($data['order'] == 'DESC')) {
			$sql .= " DESC, LCASE(nd.title) DESC";
		} else {
			$sql .= " ASC, LCASE(nd.title) ASC";
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

	public function getTotalNews($data = array(), $type) {
		/*if ($this->customer->isLogged()) {
			$customer_group_id = $this->customer->getCustomerGroupId();
		} else {
			$customer_group_id = $this->config->get('config_customer_group_id');
		}*/

        $sql = "SELECT  COUNT(DISTINCT n.news_id) AS total FROM " . DB_PREFIX . "news n LEFT JOIN " . DB_PREFIX . "news_description nd ON n.news_id=nd.news_id WHERE n.type = " . (int)$type . " AND nd.language_id = '" . (int)$this->config->get('config_language_id') . "'";

		$query = $this->db->query($sql);

		return $query->row['total'];
	}
}
?>