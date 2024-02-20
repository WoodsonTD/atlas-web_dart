String longestUniqueSubstring(String str) {
  int start = 0;
  int end = 0;
  int maxLength = 0;
  int maxStart = 0;

  Set<String> seen = {};

  while (end < str.length) {
    if (!seen.contains(str[end])) {
      seen.add(str[end]);
      end++;
      if (end - start > maxLength) {
        maxLength = end - start;
        maxStart = start;
      }
    } else {
      seen.remove(str[start]);
      start++;
    }
  }

  return str.substring(maxStart, maxStart + maxLength);
}
