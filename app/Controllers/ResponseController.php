<?php

namespace \app\Controllers;

use \app\Services\ResponseService;
use \database\connections;
Class ResponseController
{
	private $result;

	public function __construct(ResponseService $result)
	{
		$this->result = $result;
	}

	public static function getStudent()
	{
		$allStudents = $this->result->students();

		$response = [
            'success' => 'true',
            'data'    => $allStudents,
        ];
        echo json_encode($response);
	}

	public function getstudentCategories()
	{
		$studentCategories = $this->result->studentCategories();
		
		$response = [
            'success' => 'true',
            'data'    => $studentCategories,
        ];

        echo json_encode($response);
	}

	public function getScienceStudent()
	{
		$Sciencestudent = $this->result->ScienceStudent();
		
		$response = [
            'success' => 'true',
            'data'    => $Sciencestudent,
        ];
        
        echo json_encode($response);
	}

	public function getCommercialStudent()
	{
		$Commstudent = $this->result->CommercialStudent();
		
		$response = [
            'success' => 'true',
            'data'    => $Commstudent,
        ];
        
        echo json_encode($response);
	}

	public function getArtStudent()
	{
		$Artstudent = $this->result->ArtStudent();
		
		$response = [
            'success' => 'true',
            'data'    => $Artstudent,
        ];
        
        echo json_encode($response);
	}
}


