import Image from "next/image";

export default function Home() {
  return (
    <main className="flex flex-col-reverse md:flex-row">
      <div className="justify-center p-3">
      <Image src="/min/test.webp" height="208" width="370" className="rounded-lg shadow-logoShadow shadow-primary/10" alt={"szkolny projekt"}/>
      <p className="text-center">Test</p>
      <p className="text-center"><a href="/zip/test.zip">Pobierz</a></p>
      </div>
      <div className="justify-center p-3">
      <Image src="/min/test.webp" height="208" width="370" className="rounded-lg shadow-logoShadow shadow-primary/10" alt={"szkolny projekt"}/>
      <p className="text-center">Test</p>
      <p className="text-center"><a href="/zip/test.zip">Pobierz</a></p>
      </div>
      <div className="justify-center p-3">
      <Image src="/min/test.webp" height="208" width="370" className="rounded-lg shadow-logoShadow shadow-primary/10" alt={"szkolny projekt"}/>
      <p className="text-center">Test</p>
      <p className="text-center"><a href="/zip/test.zip">Pobierz</a></p>
      </div>
      <div className="justify-center p-3">
      <Image src="/min/test.webp" height="208" width="370" className="rounded-lg shadow-logoShadow shadow-primary/10" alt={"szkolny projekt"}/>
      <p className="text-center">Test</p>
      <p className="text-center"><a href="/zip/test.zip">Pobierz</a></p>
      </div>
      <div className="justify-center p-3">
      <Image src="/min/test.webp" height="208" width="370" className="rounded-lg shadow-logoShadow shadow-primary/10" alt={"szkolny projekt"}/>
      <p className="text-center">Test</p>
      <p className="text-center"><a href="/zip/test.zip">Pobierz</a></p></div>
      
      <div className="justify-center p-3">
      <Image src="/min/test.webp" height="208" width="370" className="rounded-lg shadow-logoShadow shadow-primary/10" alt={"szkolny projekt"}/>
      <p className="text-center">Test</p>
      <p className="text-center"><a href="/zip/test.zip">Pobierz</a></p></div>
   
      

    </main>
  );
}