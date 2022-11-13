<template>
    <div class="card card-body shadow-xl mx-3 mx-md-4 mt-n6 mb-4">
    <div class="container">
      <div class="row mt-sm-0 mt-5">
        <div class="col-lg-3 col-md-4 position-relative ms-lg-auto">
          <div class="p-3 text-center border-right-after">
            <i class="material-icons text-gradient text-info text-5xl mb-3">email</i>
            <h6 class="mb-0">Email</h6>
            <p class="text-dark font-weight-normal">hello@creative-tim.com</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 position-relative">
          <div class="p-3 text-center border-right-after">
            <i class="material-icons text-gradient text-info text-5xl mb-3">call</i>
            <h6 class="mb-0">Phone</h6>
            <p class="text-dark font-weight-normal">+1(424) 535 3523</p>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 me-lg-auto">
          <div class="p-3 text-center">
            <i class="material-icons text-gradient text-info text-5xl mb-3">contacts</i>
            <h6 class="mb-0">Contact</h6>
            <p class="text-dark font-weight-normal">Andrew Samian</p>
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
                        <input type="text" class="form-control" placeholder="Tiempo">
                        <span class="input-group-text"><i class="material-icons">browse_gallery</i></span>
                      </div>
                    </div>
                    <div class="col-md-6 ps-md-2">
                      <div class="input-group input-group-static mb-4">
                        <label>Sector</label>
                        <input type="text" class="form-control" placeholder="ingresa al sector que perteneces">
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