"use client";

import Image from "next/image";
import { useEffect, useState } from "react";

const NavBar = () => {
  const [scrolled, setScrolled] = useState(false);

  useEffect(() => {
    const listener = () => {
      const selfHeight = 8;

      if (window.scrollY > selfHeight) {
        setScrolled(true);
      } else if (window.scrollY <= selfHeight) {
        setScrolled(false);
      }
    };

    document.addEventListener("scroll", listener);

    return () => {
      document.removeEventListener("scroll", listener);
    };
  }, []);

  return (
    <nav
      className={`sticky p-5 top-0 z-10 transition bg-background backdrop-blur ${
        scrolled ? "bg-opacity-80" : "bg-opacity-100"
      }`}
    >
      <div className="flex items-center flex-wrap">
        <Image
          src="/logo.png" height="42" width="42"
          className="rounded-lg shadow-logoShadow shadow-primary/10" alt={""}/>
        <p className="font-bold ml-4">School Projects</p>
            <p className="p-3"><a href="/">Strona główna</a></p>
            <a href="/starszaki" className="p-2">Starszaki</a>
            <a href="/starszaki" className="p-2">Inne strony</a>
            <a href="/starszaki" className="p-2">Python</a>
            <a href="/starszaki" className="p-2">PBD & SBD</a>
            <a href="/starszaki" className="p-2">Zdjęcia</a>
            <a href="/starszaki" className="p-2">Inne pliki</a>
            <a href="https://jankupczyk.github.io/EE-09/" className="p-3">EE-09</a>
          </div>
        </nav>
  );
};

export default NavBar;