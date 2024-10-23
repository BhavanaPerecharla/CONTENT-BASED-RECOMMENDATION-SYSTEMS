document.getElementById('searchInput').addEventListener('input', function() {
    const searchTerm = this.value;
    if (searchTerm.length > 0) {
        fetchSuggestions(searchTerm);
    } else {
        clearSuggestions();
    }
});

document.getElementById('searchButton').addEventListener('click', function() {
    const artistName = document.getElementById('searchInput').value;
    fetchProfile(artistName);
});

function fetchSuggestions(term) {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', `auto_complete.php?term=${encodeURIComponent(term)}`, true);
    xhr.onload = function() {
        if (this.status === 200) {
            try {
                const suggestions = JSON.parse(this.responseText);
                displaySuggestions(suggestions);
            } catch (e) {
                console.error("Failed to parse JSON:", e);
                clearSuggestions();
            }
        } else {
            console.error("Request failed with status:", this.status);
            clearSuggestions();
        }
    };
    xhr.onerror = function() {
        console.error("Request error.");
        clearSuggestions();
    };
    xhr.send();
}

function displaySuggestions(suggestions) {
    const suggestionsList = document.getElementById('suggestionsList');
    suggestionsList.innerHTML = '';
    suggestions.forEach(function(suggestion) {
        const li = document.createElement('li');
        li.textContent = suggestion;
        li.addEventListener('click', function() {
            document.getElementById('searchInput').value = suggestion;
            clearSuggestions();
            fetchProfile(suggestion);
        });
        suggestionsList.appendChild(li);
    });
}

function clearSuggestions() {
    document.getElementById('suggestionsList').innerHTML = '';
}

function fetchProfile(artistName) {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', `fetch_profile.php?name=${encodeURIComponent(artistName)}`, true);
    xhr.onload = function() {
        if (this.status === 200) {
            try {
                const profile = JSON.parse(this.responseText);
                displayProfile(profile);
            } catch (e) {
                console.error("Failed to parse JSON:", e);
                document.getElementById('artistProfile').innerHTML = '<p>Error: Response is not valid JSON.</p>';
            }
        } else {
            console.error("Request failed with status:", this.status);
            document.getElementById('artistProfile').innerHTML = '<p>Error: Failed to fetch profile.</p>';
        }
    };
    xhr.onerror = function() {
        console.error("Request error.");
        document.getElementById('artistProfile').innerHTML = '<p>Error: Request failed.</p>';
    };
    xhr.send();
}

function displayProfile(profile) {
    const profileContainer = document.getElementById('artistProfile');
    if (profile && !profile.error) {
        profileContainer.innerHTML = `
            <h2>${profile.Name}</h2>
            <p><strong>Born:</strong> ${profile.Born}</p>
            <p><strong>BirthPlace:</strong> ${profile.BirthPlace}</p>
            <p><strong>Nationality:</strong> ${profile.Nationality}</p>
            <p><strong>Profession:</strong> ${profile.Profession}</p>
            <p><strong>Debut Film:</strong> ${profile.DebutFilm}</p>
            <p><strong>Awards:</strong> ${profile.Awards}</p>
            <p><strong>Active Years:</strong> ${profile.ActiveYears}</p>
            <p><strong>Spouse:</strong> ${profile.Spouse}</p>
            <p><strong>Children:</strong> ${profile.Children}</p>
            <p><strong>Notable Works:</strong> ${profile.NotableWorks}</p>
            <p><strong>Education:</strong> ${profile.Education}</p>
            <p><strong>Height:</strong> ${profile.Height}</p>
            <p><strong>Weight:</strong> ${profile.Weight}</p>
            <p><strong>Eye Color:</strong> ${profile.EyeColor}</p>
            <p><strong>Hair Color:</strong> ${profile.HairColor}</p>
            <p><strong>Known For:</strong> ${profile.KnownFor}</p>
            <p><strong>Net Worth:</strong> ${profile.NetWorth}</p>
            <p><strong>Social Media Handles:</strong> ${profile.SocialMediaHandles}</p>
            <p><strong>Biography:</strong> ${profile.Biography}</p>
         
        `;
    } else {
        profileContainer.innerHTML = `<p>${profile.error || 'No profile found.'}</p>`;
    }
}
