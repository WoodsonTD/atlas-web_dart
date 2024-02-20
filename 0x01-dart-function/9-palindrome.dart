bool isPalindrome(String s) {
  // Check if the length of the input string is less than 3 characters
  if (s.length < 3) {
    return false;
  }

  // Initialize start and end pointers
  int start = 0;
  int end = s.length - 1;

  // Iterate while start pointer is less than end pointer
  while (start < end) {
    // Skip non-alphanumeric characters from the start
    while (!s[start].toLowerCase().contains(RegExp(r'[a-z0-9]'))) {
      start++;
    }
    // Skip non-alphanumeric characters from the end
    while (!s[end].toLowerCase().contains(RegExp(r'[a-z0-9]'))) {
      end--;
    }
    // Compare characters at start and end pointers ignoring case
    if (s[start].toLowerCase() != s[end].toLowerCase()) {
      return false;
    }
    // Move start pointer forward and end pointer backward
    start++;
    end--;
  }
  // If the loop completes without returning false, the string is a palindrome
  return true;
}
