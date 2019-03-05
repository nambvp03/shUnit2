red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
magenta=`tput setaf 5`
cyan=`tput setaf 6`
reset=`tput sgr0`

#Similar to @BeforeClass in JUnit
oneTimeSetUp() {
  echo "${green}Run only once per file to setup environment${reset}"
}

#Similar to @Before in JUnit
setUp() {
  echo "${yellow}Run before each test method${reset}"
}

#Test 1
testEquals() {
  assertEquals 1 1
}

#Test 2
testNotEquals() {
  assertNotEquals "${red}Should not be same${reset}" 1 2
}

#Test 3
testNull() {
  string=''
  assertNull "${red}Should be null or empty${reset}" "${string}" 
}

#Test 4
testNotNull() {
  string=''
  assertNotNull "${red}Should not be null or empty${reset}" "${string}"
}

#Test 5
testTrue() {
  assertTrue "${red}File not exist${reset}" "[ -r /some/non-existant/file' ]" 
}

#Test 6
testFalse() {
  assertFalse "${red}File exist${reset}" "[ -r /some/non-existant/file' ]"
}


#Test 7
testLogSearch() {
  line=`sh ./log_search.sh`
  assertEquals "${red}Line searched should be${reset}" '10' "${line}"
}

#Test 8
testAssertTrue() {
  echo "Some complex logic that is SUCCESS"
  assertTrue ${SHUNIT_TRUE}
}

#Test 9
testFail() {
  echo "Some complex logic that is FAIL"
  fail "${red}Manual logic test is failed${reset}"
}


#Similar to @After in JUnit
tearDown() {
  echo "${cyan}Run after each test method${reset}"
}

#Similar to @AfterClass in JUnit
oneTimeTearDown() {
  echo "${green}Run only once per file to clean-up environment${reset}"
}
