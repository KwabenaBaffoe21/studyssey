String generateRoomID(String userID1, String userID2) {
  List<String> userIDs = [userID1, userID2];
  userIDs.sort();
  return userIDs.join('_');
}
