atf_test_case search
search_head() {
	atf_set "descr" "testing pkg search"
}

search_body() {
	atf_check -o inline:"pkg                            New generation package manager\n" -e empty -s exit:0 pkg search -e -Q comment -S name pkg
}

atf_init_test_cases() {
	atf_add_test_case search
}
