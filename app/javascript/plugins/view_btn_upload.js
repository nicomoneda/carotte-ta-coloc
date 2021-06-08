const initViewBtnUpload = () => {
  const input = document.querySelector('#input_photo')

  if(input) {
    const submit = document.querySelector('.input_btn')
    input.addEventListener('change', (event) => {
    submit.classList.add('view_btn')
  });
}
}

export { initViewBtnUpload };
