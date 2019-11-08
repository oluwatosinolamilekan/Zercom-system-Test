<?php

namespace app\Services;
require 'app/database/connection.php';
class ResponseServices
{

	public function students()
	{
		$query = "SELECT candidate.id, candidate.name, center_id, category_id
					FROM candidates
					INNER JOIN centers
					ON centers.center_id =candidates.center_id";

		return $query;
	}

	public function studentCategories()
	{
		$query = "SELECT candidate.id, candidate.name, center_id, category_id
					FROM candidates
					INNER JOIN categories
					ON categories.categories_id =candidates.category_id";

		return $query;
	}

	public function ScienceStudent()
	{
		$query = 
			"SELECT 
			    COUNT(*)
			FROM candidates
					INNER JOIN subjects
					ON categories.categories_id =candidates.category_id == 1";
		return $query;
	}

	public function CommercialStudent()
	{
		$query = 
			"SELECT 
			    COUNT(*)
			FROM candidates
					INNER JOIN subjects
					ON categories.categories_id =candidates.category_id == 2";

		return $query;
	}

	public function ArtStudent()
	{
		$query = 
			"SELECT 
			    COUNT(*)
			FROM candidates
					INNER JOIN subjects
					ON categories.categories_id =candidates.category_id == 3";

		return $query;
	}


}