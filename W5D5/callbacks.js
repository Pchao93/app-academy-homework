setTimeout(function() {
	alert('HAMMERTIME');
}, 5000);

hammerTime = (time) => {
	setTimeout(() => {alert(`${time} is hammertime!`)}, time);
}