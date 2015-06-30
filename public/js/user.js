
function selectTab(uid, tab){
  url = "/users/" + uid + "?tab=" + tab;
  console.log(url)
  window.location = url;
}
