



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

    const _currentlyPlaying = async (token) => {

      const result = await fetch('https://api.spotify.com/v1/me/player/currently-playing?market=ES&additional_types=episode', {
        method: 'GET',
        headers: {
          'Accept' : 'application/json',
          'Content-Type' : 'application/json',
          'Authorization' : 'Bearer ' + token}
      });

      const data = await result.json();
      return { 
        name: data.item.name,
        artist: data.item.artists[0].name,
        image: data.item.album.images[0].url
      }
    }
    

    return {
      refreshToken() {
          return _refreshToken();
      },
      currentlyPlaying(token) {
          return _currentlyPlaying(token);
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
        },

        storePlayingName(name, artist, image) {
          document.querySelector('#current-playing-title').innerHTML = name;
          document.querySelector('#current-playing-artist').innerHTML = artist;
          document.querySelector("#current-image").src = image;
        }
    }

  })();

  const APPController = (function(UICtrl, APICtrl) {


    // update token at page load
    const updateToken = async () => {
        //get the token
        const token = await APICtrl.refreshToken();           
        //store the token onto the page
        UICtrl.storeToken(token);

        const currentPlay = await APICtrl.currentlyPlaying(token);

        UICtrl.storePlayingName(currentPlay.name, currentPlay.artist, currentPlay.image);
    


        // document.querySelector('#current-playing-title').value = value;
    }


    // const updateTrack = async () => {

    //   const accessToken = UICtrl.getStoredToken().token;

    //   const currentName = await APICtrl.currentlyPlaying(accessToken);

    //   UICtrl.storePlayingName(currentName);
  


    //   // document.querySelector('#current-playing-title').value = value;
    // }

    // document.querySelector(".make-purple").addEventListener("click", (event) => {
    //   updateTrack();
    // });

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
            // updateTrack();
        }
    }

  })(UIController, APIController);

  APPController.init();
  
}

export { initAPIcall };


