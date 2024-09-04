class Navbar {
  constructor() {
    this.links = [
      { title: "STRONA GŁÓWNA", url: "index.html" },
      { title: "STARSZAKI", url: "starszaki.html" },
      { title: "INNE STRONY", url: "innestrony.html" },
      { title: "PAI, PBD i INNE", url: "inne.html" },
      { title: "EE-09", url: "https://jankupczyk.github.io/EE-09/" },
      { title: "© rotkiW285", url: "info.html" },
    ];
  }

  render() {
    const navbarElement = document.createElement("nav");
    navbarElement.classList.add("nav");

    const isSmallDevice = window.innerWidth <= 800;

    if (isSmallDevice) {
      const ulElement = document.createElement("ul");
      ulElement.classList.add("nav-list");

      this.links.forEach((link, index) => {
        const liElement = document.createElement("li");
        const aElement = document.createElement("a");
        aElement.href = link.url;
        aElement.textContent = link.title;
        aElement.classList.add(link.class);
        liElement.appendChild(aElement);
        ulElement.appendChild(liElement);
      });

      navbarElement.appendChild(ulElement);
    } else {
      this.links.forEach((link, index) => {
        const aElement = document.createElement("a");
        aElement.href = link.url;
        aElement.textContent = link.title;
        aElement.classList.add(link.class);
        navbarElement.appendChild(aElement);
      });
    }
    document.body.appendChild(navbarElement);
  }
}

const navbar = new Navbar();
navbar.render();
