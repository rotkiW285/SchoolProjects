"use client";

import Image from "next/image";
import { useEffect, useState } from "react";

const NavBar = () => {
  const [scrolled, setScrolled] = useState(false);

  useEffect(() => {
    const listener = () => {
      const selfHeight = 10;

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
      <div className="flex items-center">
        <Image
          src="/logo.png" height="42" width="42"
          className="rounded-lg shadow-logoShadow shadow-primary/10"/>
        <p className="font-bold ml-4">School Projects</p>
        <p><a href="/starszaki">Starszaki</a></p>
      </div>
    </nav>
  );
};

export default NavBar;