


// const clientId = '60badc7756714015a695c90f3063a104';
// const clientSecret = '2bcbca23fe844035b6a994e2fe56308e';
// const code = 'AQADrrme_pVaDGZcvrz3V16kqK2jfTTKSzjZJK0nOMewWe5761hRJLOPIOfzEqg0O5eKvtqAuV_76RfNPP_STEOeR5kfcI5C5eUQYg5VeFbzZdPFTZ93kVkzhM6EZsJuxjsmEMsmKQ0A7p18wAy-7jjk8GfUn72F0M61rk_qzhuGhoyaXsP5ssXo3rII2XTm-biYFhejMwhrwYATUFx5kZPREQ5ecDm_y6EesLVXKvzQkpp8a605jRwZVCDyS-5IFFEDB7v-uxExEQ';
// const refreshToken = "AQBdhukOxMJFopK1M7MLtPCI3pqymkR0G8krKKm9Ql1PSCaRY0xUttRO___QBVKgRummvhqEvBPLtClnihkDqeyvRl3o68PNsCvVia0QSlcQvEDkHNcjfN74R93LHuKC6mk";
// const accessToken = "BQDkzIYluDkC2LIOwntpO7KT9mVJNQgM-v4C6_gYAaOEeScW-S1miIhkm6boHh-bvKvfPxUw9Eyab35BlGbTwJd5Z2vdkrT1IF25ZkUbGFQB2kSSJsiBO6U1XZsOygiKpE0tya-oPhWj2sLgokz3";

// const initAPIcall = () => {
//   document.querySelectorAll(".confirm-add").forEach((button) => {
//     button.addEventListener("click", (event) => {
//       const urlArray = event.currentTarget.querySelector(".track-id").innerHTML.split('/');
//       const trackId = urlArray[urlArray.length - 1];

//       addToQueue(accessToken, trackId);
//     })
//   })
// }



// const _getCode = async () => {

//   const result = await fetch('https://accounts.spotify.com/authorize?client_id=' + clientId + '&response_type=code&redirect_uri=http%3A%2F%2Fbethedj.club&scope=user-modify-playback-state%20user-read-currently-playing', {
//       method: 'GET',
//   }).then(response => response.json()).then(data => console.log(data));

// }

// const _getToken = async () => {


//     const body = 'grant_type=authorization_code&' + 'code=' + code + '&redirect_uri=http%3A%2F%2Fbethedj.club';


//     const result = await fetch('https://accounts.spotify.com/api/token', {
//         method: 'POST',
//         headers: {
//             'Content-Type' : 'application/x-www-form-urlencoded',
//             'Authorization' : 'Basic ' + btoa(clientId + ':' + clientSecret)
//         },
//         body: body
//     }).then(output => output.json()).then(data => {
//       console.log(data.refresh_token);
//       // console.log("CHECK");
//       // return (data.refresh_token);
//     })
// }

// curl -H "Authorization: Basic NjBiYWRjNzc1NjcxNDAxNWE2OTVjOTBmMzA2M2ExMDQ6MmJjYmNhMjNmZTg0NDAzNWI2YTk5NGUyZmU1NjMwOGU=" -H "Content-Type: application/x-www-form-urlencoded" -d grant_type=authorization_code -d code=AQBDOPc43mYcLG4SILoL8WrxzWDI-AtD0OeMczzi6GdcLvZwCHAg5Subfd1yiFHaLUa-BEaUw0uCoL9KezmE5J5XZKWCpgxKYQSwv5Q9nsrVqeY0OAUjChwTOI57Bk5oML-HBLFW7b7FNor0yq2VZWkanUj4hvkB-fYLUGiQ0n95aFjn43npvM4BZopeIO9lLsOlRXFTKlZyhInRcAs-mGShoR6CZf-Dqgsj_hi5mbg -d redirect_uri=http://bethedj.club https://accounts.spotify.com/api/token

// https://accounts.spotify.com/authorize?client_id=60badc7756714015a695c90f3063a104&response_type=code&redirect_uri=http%3A%2F%2Fbethedj.club&scope=user-modify-playback-state%20user-read-currently-playing%20user-read-playback-state

const initAPIcall = () => {


  const APIController = (function() {

    const refreshToken = "AQBdhukOxMJFopK1M7MLtPCI3pqymkR0G8krKKm9Ql1PSCaRY0xUttRO___QBVKgRummvhqEvBPLtClnihkDqeyvRl3o68PNsCvVia0QSlcQvEDkHNcjfN74R93LHuKC6mk";
    const clientId = '60badc7756714015a695c90f3063a104';
    const clientSecret = '2bcbca23fe844035b6a994e2fe56308e';


    const _refreshToken = async () => {

      const body = 'grant_type=refresh_token&' + 'refresh_token=' + refreshToken;

      const result = await fetch('https://accounts.spotify.com/api/token', {
          method: 'POST',
          headers: {
              'Content-Type' : 'application/x-www-form-urlencoded',
              'Authorization' : 'Basic ' + btoa(clientId + ':' + clientSecret)
          },
          body: body
      });

      const data = await result.json();
      return data.access_token;

    }

    return {
      refreshToken() {
          return _refreshToken();
      }
    }

  })();

  const UIController = (function() {


    //public methods
    return {

        storeToken(value) {
            document.querySelector('#hidden_token').value = value;
        },

        getStoredToken() {
            return {
                token: document.querySelector('#hidden_token').value
            }
        }
    }

  })();

  const APPController = (function(UICtrl, APICtrl) {


    // get genres on page load
    const updateToken = async () => {
        //get the token
        const token = await APICtrl.refreshToken();
        //store the token onto the page
        UICtrl.storeToken(token);
    }

    document.querySelectorAll(".confirm-add").forEach((button) => {
      button.addEventListener("click", (event) => {
        const accessToken = UICtrl.getStoredToken().token;
        const urlArray = event.currentTarget.querySelector(".track-id").innerHTML.split('/');
        const trackId = urlArray[urlArray.length - 1];

        addToQueue(accessToken, trackId);
      })
    })

    const addToQueue = async (token, trackId) => {

      const result = fetch('https://api.spotify.com/v1/me/player/queue?uri=spotify:track:' + trackId + '&device_id=8a20e875378baab24c6581000f5612f4ebcf4993', {
          method: 'POST',
          headers: { 'Authorization' : 'Bearer ' + token}
      });
    }

    return {
        init() {
            console.log('App is starting');
            updateToken();
        }
    }

  })(UIController, APIController);

  APPController.init();

}

export { initAPIcall };


