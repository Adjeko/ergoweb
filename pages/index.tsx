import Centercolumnlayout from '@/components/centercolumnlayout/centercolumnlayout'
import Iconcard from '@/components/iconcard/iconcard'
import { IconCardVariants } from '@/components/iconcard/iconcard'
import Mainbutton from '@/components/mainbutton/mainbutton'
import Navbar from '@/components/navbar/navbar'
import Secondarybutton from '@/components/secondarybutton/secondarybutton'
import Textblock, { TextBlockVariants } from '@/components/textblock/textblock'
import Twosidelayout from '@/components/twosidelayout/twosidelayout'
import type { NextPage } from 'next'


import { LightBulbIcon, AdjustmentsIcon, PuzzleIcon, ClipboardCheckIcon, HeartIcon, KeyIcon, BriefcaseIcon } from '@heroicons/react/outline'
import Footer from '@/components/footer/footer'


const Home: NextPage = () => {
  return (
    <>
      <Navbar />

      <div className='bg-blue-200'>
        <Centercolumnlayout>
          <Twosidelayout>
            <div className='my-64'>
              <Textblock title='Ergotherapie Fortbildungen für euer Team' titleTailwindStyling='my-12 text-4xl'
                text='Wir sind gemeinsam auf dem Weg !' textTailwindStyling='my-8 text-lg' variant={TextBlockVariants.LEFT} />
              <div className='flex flex-row items-start gap-10'>
                <Mainbutton text='zu den Modulen' href='/' />
                <Secondarybutton text='Kontaktiere uns' href='/' />
              </div>
            </div>
            <div></div>
          </Twosidelayout>
        </Centercolumnlayout>
      </div>

      <div className=''>
        <Centercolumnlayout>
          <div className='my-32'>
            <Textblock title='Was ist Ergo Unterwegs?' titleTailwindStyling='my-8 text-3xl'
              text='Wir bieten deinem Ergotherapie-Team innovative Online-Fortbildungsmodule.
Wir sind selbst Ergotherapeutinnen und begleiten euch in persönlichen Beratungen auf dem Weg zu mehr Klientenzentrierung, Evidenzbasierung und Betätigungsorientierung.
Zusätzlich erhaltet ihr auf unserer Lernplattform ein Jahr lang:
- Ergotherapie-Wissen auf dem neuesten Stand der Forschung
- Interaktive Lernclips für eure Teamsitzung
- Konkrete Tipps zur Umsetzung im Praxisalltag' textTailwindStyling='text-base'
              variant={TextBlockVariants.CENTER} />
          </div>
        </Centercolumnlayout>
      </div>

      <Centercolumnlayout>
        <div className='flex gap-5 mb-36 text-'>
          <Iconcard icon={<LightBulbIcon />} title='Evidenzbasiert' titleTailwindStyling='text-3xl mb-4'
            text='Die ergotherapeutischen Inhalte unserer Module sind wissenschaftlich fundiert und werden regelmäßig auf ihre Aktualität überprüft.' textTailwindStyling='text-base'
            variant={IconCardVariants.VERTICAL} />
          <Iconcard icon={<AdjustmentsIcon />} title='Flexibel' titleTailwindStyling='text-3xl mb-4'
            text='Ihr könnt jederzeit und überall auf unsere Module zugreifen. Ergo Unterwegs passt flexibel in euren Berufsalltag.' textTailwindStyling='text-base'
            variant={IconCardVariants.VERTICAL} />
          <Iconcard icon={<PuzzleIcon />} title='Nachhaltig' titleTailwindStyling='text-3xl mb-4'
            text='Angemeldete Teammitglieder erhalten ein Jahr lang Zugriff auf unsere Module. Unsere persönliche Beratung sorgt für den Theorie-Praxis Transfer.' textTailwindStyling='text-base'
            variant={IconCardVariants.VERTICAL} />
          <Iconcard icon={<ClipboardCheckIcon />} title='Praxisnah' titleTailwindStyling='text-3xl mb-4'
            text='Unsere Module sind speziell von Ergotherapeutinnen für Ergotherapeut: innen entwickelt. Daher stellen wir sicher, dass alle Inhalte praxisnah gestaltet sind.' textTailwindStyling='text-base'
            variant={IconCardVariants.VERTICAL} />
        </div>
      </Centercolumnlayout>

      <div className='bg-blue-100'>
        <Centercolumnlayout>
          <Twosidelayout>
            <div className='my-12'>
              <Textblock title='Unsere Module' titleTailwindStyling='text-3xl mb-8'
                text='Wir bieten euch über unsere Online-Module innovative und flexible Werkzeuge, um in eurer Praxis betätigungsorientiert, klientenzentriert und evidenzbasiert zu arbeiten.
Macht euch gemeinsam mit eurem Team auf den Weg!' textTailwindStyling='text-base mb-4'
                variant={TextBlockVariants.LEFT} />
              <Iconcard icon={<HeartIcon />} title='Basismodule' text='' variant={IconCardVariants.HORIZONTAL} />
              <Iconcard icon={<KeyIcon />} title='Vertiefungsmodule' text='' variant={IconCardVariants.HORIZONTAL} />
            </div>

            <img src='https://ergo-unterwegs.de/wp-content/uploads/2021/03/Clip4.jpg' className='mx-12 my-12' />
          </Twosidelayout>
        </Centercolumnlayout>
      </div>

      <Twosidelayout>
        <div className='mx-24 my-20 h-max'>
          <Textblock title='Ergotherapie im Wandel' titleTailwindStyling='text-3xl mb-8'
            text='Die Wissensbasis der Ergotherapie wird ständig erweitert und verändert. Wir alle wollen unseren Klient:innen die bestmögliche Therapie anbieten. Aber wie kann man da im stressigen Praxisalltag auf dem Laufenden bleiben?
Wir haben uns die Theorie hinter der Praxis angeschaut und stellen euch unsere Lösungen vor!' textTailwindStyling='text-base mr-24'
            variant={TextBlockVariants.LEFT} />
        </div>
        <img src='https://ergo-unterwegs.de/wp-content/uploads/2021/03/VertiefungBeratung1-2048x1365.jpg' />
      </Twosidelayout>

      <Centercolumnlayout>
        <Twosidelayout>
          <div className='my-24'>
            <Textblock title='Über uns' titleTailwindStyling='text-3xl mb-8'
              text='Wir, Sarah und Sara, sind Ergotherapeutinnen mit langjähriger Erfahrung in ambulanten Praxen und begleiten dein Team auf dem Weg zu mehr Klientenzentrierung, Betätigungsorientierung und Evidenzbasierung. Durch unser Studium und das Gestalten unseres ersten gemeinsamen Change-Prozesses gelang es uns, diese Werte zu vertiefen und praxisnahe Strategien zu entwickeln, die wir mit euch teilen möchten.
Wir sind fest davon überzeugt, dass wir alle im Team mehr erreichen können. In unseren Online-Module bieten wir euch deshalb nicht nur ergotherapeutisches Fachwissen auf dem neuesten Stand der Forschung, sondern geben euch auch das Handwerkszeug, diese Inhalte in euren Praxisalltag zu übertragen.
Wir freuen uns darauf, gemeinsam mit euch unterwegs zu sein!' textTailwindStyling='text-base mr-24 mb-8'
              variant={TextBlockVariants.LEFT} />
            <Mainbutton text='Erfahre mehr über uns' href='/' />
          </div>
          <img src='https://ergo-unterwegs.de/wp-content/uploads/2021/03/VertiefungBeratung1-2048x1365.jpg' className='' />
        </Twosidelayout>
      </Centercolumnlayout>

      <div className='bg-blue-200'>
        <Centercolumnlayout>
          <div className='my-16'>
            <Textblock title='Sichere dir unser kostenloses Startmodul!' titleTailwindStyling='text-3xl mb-8'
              text='Lerne uns ganz kostenlos und unverbindlich im Startmodul kennen. Starte noch heute!' textTailwindStyling='text-base mb-6'
              variant={TextBlockVariants.CENTER} />
            <div className='grid place-items-center'>
              <Secondarybutton text='Jetzt kostenlos buchen!' href='' />
            </div>
          </div>
        </Centercolumnlayout>
      </div>

      <Centercolumnlayout>
        <div className='mb-24'>
        <div className='mb-12 mt-36'>
          <Textblock title='Lerne unsere Module kennen' titleTailwindStyling='text-3xl' text='' variant={TextBlockVariants.CENTER} />
        </div>
          <Twosidelayout>
            <div className='grid place-items-center'>
              <img src='https://ergo-unterwegs.de/wp-content/uploads/2021/03/Clip6.jpg' />
            </div>
            <div className='grid grid-cols-2'>
              <Iconcard icon={<BriefcaseIcon />} title='Ergotherapeutische Modelle - Grundlagen' titleTailwindStyling='text-2xl mb-4'
                                                 text='Modellgeleitetes Arbeiten in der Ergotherapie bringt viele Vorteile - aber auch Komplexität mit sich. Wir gestalten mit euch den Weg von der Theorie bis zur Umsetzung im Praxisalltag!' textTailwindStyling='text-base'
                                                 variant={IconCardVariants.VERTICAL} />
              <Iconcard icon={<LightBulbIcon />} title='Evidenzbasierung in der Ergotherapie' titleTailwindStyling='text-2xl mb-4'
                                                 text='Forschung, fachliche Expertise, ergotherapeutische Leitlinien. Dein Team lernt aktuelle Evidenz in euren Praxisalltag zu integrieren – effektiv, flexibel und zeitsparend.' textTailwindStyling='text-base'
                                                 variant={IconCardVariants.VERTICAL} />
            </div>
          </Twosidelayout>
        </div>
      </Centercolumnlayout>

      <Twosidelayout>
        <img src='https://ergo-unterwegs.de/wp-content/uploads/2021/02/965a5cb6-7a8c-48bc-9b6c-b2d995ab43cd.jpg' />
        <div className='flex flex-col justify-center h-full mx-24'>
          <Textblock title='Interessiert?' titleTailwindStyling='text-3xl mb-8'
                     text='Schreibt uns einfach über das Kontaktformular! Wir freuen uns, von euch zu hören!' textTailwindStyling='text-base mb-8'
                     variant={TextBlockVariants.LEFT} />
          <Mainbutton text='Kontaktiere uns' href='/' />
        </div>
      </Twosidelayout>

      <Footer/>
    </>
  )
}

export default Home
