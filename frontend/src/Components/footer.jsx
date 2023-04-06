import React  from "react";

function Footer(){
  console.log(new Date().getFullYear());
  return <footer>
        <p>Copyright © {new Date().getFullYear()}</p>
      </footer>
}
export default Footer;