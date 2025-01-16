// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"
import "@popperjs/core"

// function handleDeleteClick(event) {
//   event.preventDefault(); // 阻止默認行為（防止跳轉）
//   event.stopPropagation(); // 阻止事件冒泡
//   console.log("Delete button clicked!");
// }

// document.querySelectorAll('.list-delete-icon').forEach(el => {
//   el.addEventListener('click', e => {
//     e.preventDefault();
//     console.log('Delete button clicked!', e.target);
//   });
// });



// 將函數掛載到 window 對象
// window.handleDeleteClick = handleDeleteClick;
