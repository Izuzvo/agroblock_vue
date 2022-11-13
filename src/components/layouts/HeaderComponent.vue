<template>
    <div id="header" class="container position-sticky z-index-sticky top-0">
        <div class="row" id="nav">
            <div class="col-12" id="nav-2">
                <nav class="navbar navbar-expand-lg  blur border-radius-xl top-0 z-index-fixed shadow position-absolute my-3 py-2 start-0 end-0 mx-4" id="nav-3">
                <div class="container-fluid px-0" id="body">
                    <a class="navbar-brand font-weight-bolder ms-sm-3  d-none d-md-block" href=" https://demos.creative-tim.com/material-kit-pro/index " rel="tooltip" title="Designed and Coded by Creative Tim" data-placement="bottom" target="_blank">
                    AgroBlock
                    </a>
                    <a class="navbar-brand font-weight-bolder ms-sm-3  d-block d-md-none" href=" https://demos.creative-tim.com/material-kit-pro/index " rel="tooltip" title="Designed and Coded by Creative Tim" data-placement="bottom" target="_blank">
                    Material Design
                    </a>
                    <a href="https://www.creative-tim.com/product/material-kit-pro#pricingCard" class="btn btn-sm  bg-gradient-primary  mb-0 ms-auto d-lg-none d-block">Buy Now</a>
                    <button class="navbar-toggler shadow-none ms-md-2" type="button" data-bs-toggle="collapse" data-bs-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon mt-2">
                        <span class="navbar-toggler-bar bar1"></span>
                        <span class="navbar-toggler-bar bar2"></span>
                        <span class="navbar-toggler-bar bar3"></span>
                    </span>
                    </button>
                    <div class="collapse navbar-collapse w-100 pt-3 pb-2 py-lg-0" id="navigation">
                    <ul class="navbar-nav navbar-nav-hover ms-auto">
                        <li class="nav-item dropdown dropdown-hover mx-2">
                        <a role="button" href="/login" class="nav-link ps-2 d-flex cursor-pointer align-items-center" id="dropdownMenuPages">
                           
                            Login
                           
                        </a>
                        
                        </li>
                       
                    </ul>
                    <ul class="navbar-nav d-lg-block d-none" id="ul">
                        <li class="nav-item" id="li">
                            <button v-if="!connected" @click="connect" class="btn btn-sm  bg-gradient-primary  mb-0">
                                Conectar Wallet
                            </button>
                            <button v-if="connected" @click="callContract" class="btn btn-sm  bg-gradient-primary  mb-0">
                                Call contract   
                            </button>
                            {{ contractResult }}
                        </li>
                    </ul>
                    </div>
                    <!-- Mesta mask -->
                   
                </div>
                </nav>
                <!-- End Navbar -->
            </div>
        </div>
    </div>
</template>

<script>
import Web3 from 'web3'
export default {
    name:'Header-component',

    data() {
    return {
      connected: false,
      contractResult: '',
    }
  },

  methods: {

    connect: function () {
        // this connects to the wallet
      
      if (window.ethereum) { // first we check if metamask is installed
        window.ethereum.request({ method: 'eth_requestAccounts' })
          .then(() => {
            this.connected = true; // If users successfully connected their wallet
          });
      }
    },

    callContract: function () {
    // method for calling the contract method
    let web3 = new Web3(window.ethereum);
    let contractAddress = '0xe8Da1667713e8AfA55aB6F3E9BF4c66BdE338060';

    

    let abi = JSON.parse(`[{"constant": true,"inputs": [],"name": "age","outputs": [{"internalType": "uint256","name": "","type": "uint256"}],"payable": false,"stateMutability": "view","type": "function"},{"constant": false,"inputs": [{"internalType": "string","name": "_sistemaRiego","type": "string"},{"internalType": "uint256","name": "_cantidad","type": "uint256"},{"internalType": "string","name": "_sector","type": "string"}],"name": "crearRegistroAgua","outputs": [],"payable": false,"stateMutability": "nonpayable","type": "function"},{"constant": false,"inputs": [{"internalType": "uint256","name": "_litrosDia","type": "uint256"},{"internalType": "int256","name": "_tempDia","type": "int256"},{"internalType": "string","name": "_sector","type": "string"}],"name": "crearRegistroEvaporacion","outputs": [],"payable": false,"stateMutability": "nonpayable","type": "function"},{"constant": false,"inputs": [{"internalType": "int256","name": "_cationes","type": "int256"},{"internalType": "int256","name": "_aniones","type": "int256"},{"internalType": "string","name": "_sector","type": "string"}],"name": "crearRegistroNutrientes","outputs": [],"payable": false,"stateMutability": "nonpayable","type": "function"},{"constant": false,"inputs": [{"internalType": "uint256","name": "_cantidadLluvia","type": "uint256"},{"internalType": "string","name": "_fecha","type": "string"},{"internalType": "string","name": "_sector","type": "string"}],"name": "crearRegistroPresipitacion","outputs": [],"payable": false,"stateMutability": "nonpayable","type": "function"},{"constant": true,"inputs": [],"name": "getExample","outputs": [{"internalType": "uint256","name": "","type": "uint256"}],"payable": false,"stateMutability": "view","type": "function"},{"constant": true,"inputs": [],"name": "name","outputs": [{"internalType": "string","name": "","type": "string"}],"payable": false,"stateMutability": "view","type": "function"}]`);


    let contract = new web3.eth.Contract(abi, contractAddress);

    contract.methods.getExample().call()
        .then(result => this.contractResult = result);
    }

  }
}
</script>


<style>

</style>