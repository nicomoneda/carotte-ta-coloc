const initViewBtnUpload = () => {
  const input = document.querySelector('#input_photo')

  if(input) {
    const submit = document.querySelector('.input_btn')
    const text = document.querySelector('.upload_photo_text')
    const btn_back = document.querySelector('.back_btn')
    input.addEventListener('change', (event) => {
    submit.classList.add('view_btn')
    text.classList.add('hide_text')
    btn_back.classList.add('hide_text')
  });
}
}

export { initViewBtnUpload };
