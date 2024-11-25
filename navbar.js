class Navbar {
  constructor() {
    this.links = [
      { title: "STRONA GŁÓWNA", url: "/" },
      { title: "STARSZAKI", url: "starszaki" },
      { title: "INNE STRONY", url: "innestrony" },
      { title: "PLIKI", url: "pliki" }
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
