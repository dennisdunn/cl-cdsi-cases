(in-package :cl-cdsi-case-library/tests)

(deftest test-the-case-library-catalog
  (testing "loading the catalog"
    (let ((ids (get-catalog)))
      (ok (= (length ids) 823))))

  (testing "get a specific testcase from the catalog"
    (let ((tcase (get-case "2013-0001")))
      (ok (string= (cl-cdsi-case-library::testcase-id tcase) "2013-0001")))))
