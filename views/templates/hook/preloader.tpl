<style type="text/css">
@media only screen and (max-width: 768px) {
  #preloader {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: #000;
      z-index: 999999;
  }
  #loader {
      display: block;
      position: relative;
      left: 50%;
      top: 50%;
      width: 150px;
      height: 150px;
      margin: -75px 0 0 -75px;
      border-radius: 50%;
      border: 3px solid transparent;
      border-top-color: #5272eb;
      -webkit-animation: spin 2s linear infinite;
      animation: spin 2s linear infinite;
  }
  #loader:before {
      content: "";
      position: absolute;
      top: 5px;
      left: 5px;
      right: 5px;
      bottom: 5px;
      border-radius: 50%;
      border: 3px solid transparent;
      border-top-color: #5272eb;
      -webkit-animation: spin 3s linear infinite;
      animation: spin 3s linear infinite;
  }
  #loader:after {
      content: "";
      position: absolute;
      top: 15px;
      left: 15px;
      right: 15px;
      bottom: 15px;
      border-radius: 50%;
      border: 3px solid transparent;
      border-top-color: #5272eb;
      -webkit-animation: spin 1.5s linear infinite;
      animation: spin 1.5s linear infinite;
  }
  @-webkit-keyframes spin {
      0%   {
          -webkit-transform: rotate(0deg);
          -ms-transform: rotate(0deg);
          transform: rotate(0deg);
      }
      100% {
          -webkit-transform: rotate(360deg);
          -ms-transform: rotate(360deg);
          transform: rotate(360deg);
      }
  }
  @keyframes spin {
      0%   {
          -webkit-transform: rotate(0deg);
          -ms-transform: rotate(0deg);
          transform: rotate(0deg);
      }
      100% {
          -webkit-transform: rotate(360deg);
          -ms-transform: rotate(360deg);
          transform: rotate(360deg);
      }
  }
}
</style>
<div id="preloader">
  <div id="loader"></div>
</div>
<script language="javascript">
window.addEventListener('load', function() {
    console.log('All assets are loaded');
    setTimeout(function(){
      var elem = document.getElementById("preloader");
      elem.remove();
    }, 500);
});
</script>