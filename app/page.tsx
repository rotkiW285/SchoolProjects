import Image from "next/image";

export default function Home() {
  return (
    <main className="flex flex-grow flex-col-reverse md:flex-row justify-center">
      <div className="justify-center ">
      <Image src="/min/test.webp" height="208" width="370" className="rounded-lg shadow-logoShadow shadow-primary/10"/>
      <p>Test</p>
      <p><a href="">Pobierz</a></p>
      </div>

    </main>
  );
}