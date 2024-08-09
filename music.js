let currentAudio = null;
let currentCard = null;

function playMusic(file, card) {
    const playButton = card.querySelector('.fa-play, .fa-pause');
    const audio = new Audio(file);
    const elapsedElement = card.querySelector('.elapsed');
    const timeNowElement = card.querySelector('.time_now');
    const timeFullElement = card.querySelector('.time_full');

    // Pause the previous audio if it's still playing
    if (currentAudio && currentAudio !== audio) {
        currentAudio.pause();
        currentCard.querySelector('.fa-pause').classList.replace('fa-pause', 'fa-play');
        currentCard = null;
    }

    if (!currentCard || currentCard !== card) {
        currentAudio = audio;
        currentCard = card;
        playButton.classList.replace('fa-play', 'fa-pause');
        
        audio.play();

        audio.ontimeupdate = () => {
            let currentTime = audio.currentTime;
            let duration = audio.duration;
            let currentMinutes = Math.floor(currentTime / 60);
            let currentSeconds = Math.floor(currentTime % 60);
            let durationMinutes = Math.floor(duration / 60);
            let durationSeconds = Math.floor(duration % 60);

            elapsedElement.style.width = `${(currentTime / duration) * 100}%`;
            timeNowElement.textContent = `${currentMinutes}:${currentSeconds < 10 ? '0' : ''}${currentSeconds}`;
            timeFullElement.textContent = `${durationMinutes}:${durationSeconds < 10 ? '0' : ''}${durationSeconds}`;
        };

        audio.onended = () => {
            playButton.classList.replace('fa-pause', 'fa-play');
            elapsedElement.style.width = '0%';
            timeNowElement.textContent = '0:00';
        };
    } else {
        if (audio.paused) {
            audio.play();
            playButton.classList.replace('fa-play', 'fa-pause');
        } else {
            audio.pause();
            playButton.classList.replace('fa-pause', 'fa-play');
        }
    }
}

function changeVolume(volume) {
    if (currentAudio) {
        currentAudio.volume = volume / 100;
    }
}

function downloadMusic(file) {
    // Simulate a download process
    setTimeout(() => {
        const alertPlaceholder = document.createElement('div');
        alertPlaceholder.innerHTML = `
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Success!</strong> File has been successfully downloaded.
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        `;
        document.body.appendChild(alertPlaceholder);

        // Automatically dismiss the alert after 5 seconds
        setTimeout(() => {
            const alertElement = bootstrap.Alert.getInstance(alertPlaceholder.querySelector('.alert'));
            if (alertElement) {
                alertElement.close();
            }
        }, 5000);
    }, 1000); // Simulate a download delay

    // You can trigger the actual file download here
    // window.location.href = file;
}
