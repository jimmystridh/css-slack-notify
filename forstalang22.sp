#include <sourcemod>
#include <cURL>

public Plugin myinfo =
{
	name = "Forstalang22 CS-bot",
	author = "Me",
	description = "Posts stats to Slack",
	version = "1.0",
	url = "http://forstalang22.slack.com/"
};

public void OnPluginStart()
{
  char data[512];
  CreateHandledData(data, sizeof(data));

  PostData(data);
	//PrintToServer(data);
}

void PostData(const char[] data)
{
  char url[256];
  url = ""

  Handle curl = curl_easy_init();
  if(curl == null) return;

  SetUrl(curl, url);
  SetData(curl, data);
  curl_easy_perform_thread(curl, RequestFinished);
}

void SetUrl(Handle curl, const char[] url)
{
  curl_easy_setopt_string(curl, CURLOPT_URL, url);
  curl_easy_setopt_int(curl, CURLOPT_SSL_VERIFYPEER, 0);
}

void SetData(Handle curl, const char[] data)
{
  curl_easy_setopt_string(curl, CURLOPT_POSTFIELDS, data);
}


public int RequestFinished(Handle curl, CURLcode code)
{
  if(code != CURLE_OK) {
    char error[128];
    curl_get_error_buffer(curl, error, sizeof(error));
    LogError("[Forstalang22 Slack] %s", error);
  }
  delete curl;
}



void CreateHandledData(char[] data, int length)
{
  // int reportId = notification.ReadCell();
  char admin[MAX_NAME_LENGTH] = "hej"
  int reportId = 1
  // notification.ReadString(admin, sizeof(admin));

  Format(data,
    length,
    "payload={\
      \"text\":\"*%s* from counterstrike #%i. :thumbsup:\",\
      \"icon_emoji\":\":cs:\", \"channel\":\"#lanparty\",\
			\"username\":\"CS-bot\"}",
    admin,
    reportId);


}
