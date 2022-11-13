<template>
     <section class="position-relative">
    <div class="page-header min-vh-50" style="background-image: url('/img/wall_2.jpg');" loading="lazy">
      <span class="mask bg-gradient-info"></span>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6 text-center mx-auto">
            <h2 class="text-white mb-3">Centraliza tus datos</h2>
            <p class="lead text-white mb-6">con la mejor confidencialidad de la tecnologia de Blockchain</p>
          </div>
        </div>
      </div>
    </div>
  </section>
  <div class="card card-body shadow-xl mx-3 mx-md-4 mt-n6 mb-4">
    <div class="container">
      <div class="row mt-sm-0 mt-5">
        <div class="col-lg-3 col-md-4 position-relative ms-lg-auto">
          <div class="p-3 text-center border-right-after">
            <i class="material-icons text-gradient text-info text-5xl mb-3">email</i>
            <h6 class="mb-0">Email</h6>
            <p class="text-dark font-weight-normal">devero@code.com</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 position-relative">
          <div class="p-3 text-center border-right-after">
            <i class="material-icons text-gradient text-info text-5xl mb-3">call</i>
            <h6 class="mb-0">Celular</h6>
            <p class="text-dark font-weight-normal">+52(636) 101 4815</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 me-lg-auto">
          <div class="p-3 text-center">
            <i class="material-icons text-gradient text-info text-5xl mb-3">contacts</i>
            <h6 class="mb-0">Contacto</h6>
            <p class="text-dark font-weight-normal">Nogales S.A</p>
          </div>
        </div>
      </div>
    </div>
    <section class="py-md-7 py-5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-8 col-10 mx-auto text-center">
            <div class="mb-md-5">
              <h3>Cosumo de tiempo</h3>
              <p>
                El ultimo tiempo de tu cosehca por medio de nuestra blockchain!
              </p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <div class="card card-plain">
              <form id="contact-form" method="post" autocomplete="off">
                <div class="card-body">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="input-group input-group-static mb-4">
                        <label>Ingresa el tiempo</label>
                        <input type="text" class="form-control" placeholder="Litro x Hectareas">
                        <span class="input-group-text"><i class="material-icons">browse_gallery</i></span>
                      </div>
                    </div>
                    <div class="col-md-6 ps-md-2">
                      <div class="input-group input-group-static mb-4">
                        <label>Sector</label>
                        <input type="text" class="form-control" placeholder="No. de sector">
                        <span class="input-group-text"><i class="material-icons">compost</i></span>
                      </div>
                    </div>
                  </div>
                  <div class="form-group mb-4 mt-md-0 mt-4">
                    <div class="input-group input-group-static mb-4">
                      <textarea name="message" class="form-control" id="message" rows="6" placeholder="Describe el tiempo de tu cosecha"></textarea>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 text-center">
                      <a href="/user" class="btn bg-gradient-info mt-4">Guardar datos</a>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
        
      </div>
    </section>
  </div>
</template>

<script>
export default {
    name:'form-component'
}
</script>

<style>

</style>