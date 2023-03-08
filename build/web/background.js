// Import the `initialize` function from your package.
// import { initialize } from 'boxch-extension';

// // Create a reference to your wallet's existing API.
// const boxch = new BoxchWallet();

// // Register your wallet using the Wallet Standard, passing the reference.
// initialize(boxch);

// Attach the reference to the window, guarding against errors.
try {
    Object.defineProperty(window, 'solana', { value: Phantom() });
}
catch (error) {
    console.error(error);
}

console.log("run");


 globalThis.addEventListener("connect", (event) => {
    console.log(event);
  });

