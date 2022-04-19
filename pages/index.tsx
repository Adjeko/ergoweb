import Centercolumnlayout from '@/components/centercolumnlayout/centercolumnlayout'
import Iconcard from '@/components/iconcard/iconcard'
import { IconCardVariants } from '@/components/iconcard/iconcard'
import Mainbutton from '@/components/mainbutton/mainbutton'
import Navbar from '@/components/navbar/navbar'
import Secondarybutton from '@/components/secondarybutton/secondarybutton'
import Textblock from '@/components/textblock/textblock'
import Twosidelayout from '@/components/twosidelayout/twosidelayout'
import type { NextPage } from 'next'


import { LightBulbIcon, AdjustmentsIcon, PuzzleIcon, ClipboardCheckIcon, HeartIcon, KeyIcon, BriefcaseIcon } from '@heroicons/react/outline'


const Home: NextPage = () => {
  return (
    <>
      <Navbar />

      <Centercolumnlayout>
        <Twosidelayout>
          <div className=''>
            <Textblock title='Ergotherapie Fortbildungen für euer Team' text='Wir sind gemeinsam auf dem Weg !' alignment='left' />
            <div className='flex flex-row items-start'> 
              <Mainbutton text='zu den Modulen' href='/' />
              <Secondarybutton text='Kontaktiere uns' href='/' />
            </div>
          </div>
          <div></div>
        </Twosidelayout>
      </Centercolumnlayout>

      <Centercolumnlayout>
        <Textblock title='Was ist Ergo Unterwegs?' text='Wir bieten deinem Ergotherapie-Team innovative Online-Fortbildungsmodule.
Wir sind selbst Ergotherapeutinnen und begleiten euch in persönlichen Beratungen auf dem Weg zu mehr Klientenzentrierung, Evidenzbasierung und Betätigungsorientierung.
Zusätzlich erhaltet ihr auf unserer Lernplattform ein Jahr lang:
- Ergotherapie-Wissen auf dem neuesten Stand der Forschung
- Interaktive Lernclips für eure Teamsitzung
- Konkrete Tipps zur Umsetzung im Praxisalltag' alignment='center' />
      </Centercolumnlayout>

      <Centercolumnlayout>
        <div className='flex gap-5'>
          <Iconcard icon={<LightBulbIcon />} title='Evidenzbasiert' text='Die ergotherapeutischen Inhalte unserer Module sind wissenschaftlich fundiert und werden regelmäßig auf ihre Aktualität überprüft.' variant={IconCardVariants.VERTICAL} />
          <Iconcard icon={<AdjustmentsIcon />} title='Flexibel' text='Ihr könnt jederzeit und überall auf unsere Module zugreifen. Ergo Unterwegs passt flexibel in euren Berufsalltag.' variant={IconCardVariants.VERTICAL} />
          <Iconcard icon={<PuzzleIcon />} title='Nachhaltig' text='Angemeldete Teammitglieder erhalten ein Jahr lang Zugriff auf unsere Module. Unsere persönliche Beratung sorgt für den Theorie-Praxis Transfer.' variant={IconCardVariants.VERTICAL} />
          <Iconcard icon={<ClipboardCheckIcon />} title='Praxisnah' text='Unsere Module sind speziell von Ergotherapeutinnen für Ergotherapeut: innen entwickelt. Daher stellen wir sicher, dass alle Inhalte praxisnah gestaltet sind.' variant={IconCardVariants.VERTICAL} />
        </div>
      </Centercolumnlayout>

      <Centercolumnlayout>
        <Twosidelayout>
          <div>
            <Textblock title='Unsere Module' text='Wir bieten euch über unsere Online-Module innovative und flexible Werkzeuge, um in eurer Praxis betätigungsorientiert, klientenzentriert und evidenzbasiert zu arbeiten.
Macht euch gemeinsam mit eurem Team auf den Weg!' alignment='left' />
            <Iconcard icon={<HeartIcon />} title='Basismodule' text='' variant={IconCardVariants.HORIZONTAL} />
            <Iconcard icon={<KeyIcon />} title='Vertiefungsmodule' text='' variant={IconCardVariants.HORIZONTAL}  />
          </div>
          <img src='https://ergo-unterwegs.de/wp-content/uploads/2021/03/Clip4.jpg' />
        </Twosidelayout>
      </Centercolumnlayout>

      <Twosidelayout>
        <div>
          <Textblock title='Ergotherapie im Wandel' text='Die Wissensbasis der Ergotherapie wird ständig erweitert und verändert. Wir alle wollen unseren Klient:innen die bestmögliche Therapie anbieten. Aber wie kann man da im stressigen Praxisalltag auf dem Laufenden bleiben?
Wir haben uns die Theorie hinter der Praxis angeschaut und stellen euch unsere Lösungen vor!' alignment='center' />
        </div>
        <img src='https://ergo-unterwegs.de/wp-content/uploads/2021/03/VertiefungBeratung1-2048x1365.jpg' />
      </Twosidelayout>

      <Centercolumnlayout>
        <Twosidelayout>
          <div>
            <Textblock title='Über uns' text='Wir, Sarah und Sara, sind Ergotherapeutinnen mit langjähriger Erfahrung in ambulanten Praxen und begleiten dein Team auf dem Weg zu mehr Klientenzentrierung, Betätigungsorientierung und Evidenzbasierung. Durch unser Studium und das Gestalten unseres ersten gemeinsamen Change-Prozesses gelang es uns, diese Werte zu vertiefen und praxisnahe Strategien zu entwickeln, die wir mit euch teilen möchten.
Wir sind fest davon überzeugt, dass wir alle im Team mehr erreichen können. In unseren Online-Module bieten wir euch deshalb nicht nur ergotherapeutisches Fachwissen auf dem neuesten Stand der Forschung, sondern geben euch auch das Handwerkszeug, diese Inhalte in euren Praxisalltag zu übertragen.
Wir freuen uns darauf, gemeinsam mit euch unterwegs zu sein!' alignment='center' />
            <Mainbutton text='Erfahre mehr über uns' href='/' />
          </div>
          <img src='https://ergo-unterwegs.de/wp-content/uploads/2021/03/VertiefungBeratung1-2048x1365.jpg' />
        </Twosidelayout>
      </Centercolumnlayout>

      <Centercolumnlayout>
        <Textblock title='Sichere dir unser kostenloses Startmodul!' text='Lerne uns ganz kostenlos und unverbindlich im Startmodul kennen.
Starte noch heute!' alignment='center' />
        <Secondarybutton text='Jetzt kostenlos buchen!' href='' />
      </Centercolumnlayout>

      <Centercolumnlayout>
        <Textblock title='Lerne unsere Module kennen' text='' alignment='center' />
        <Twosidelayout>
          <img src='https://ergo-unterwegs.de/wp-content/uploads/2021/03/Clip6.jpg' />
          <div className='flex flex-row'>
            <Iconcard icon={<BriefcaseIcon />} title='Ergotherapeutische Modelle - Grundlagen' text='Modellgeleitetes Arbeiten in der Ergotherapie bringt viele Vorteile - aber auch Komplexität mit sich. Wir gestalten mit euch den Weg von der Theorie bis zur Umsetzung im Praxisalltag!' variant={IconCardVariants.VERTICAL} />
            <Iconcard icon={<LightBulbIcon />} title='Evidenzbasierung in der Ergotherapie' text='Forschung, fachliche Expertise, ergotherapeutische Leitlinien. Dein Team lernt aktuelle Evidenz in euren Praxisalltag zu integrieren – effektiv, flexibel und zeitsparend.' variant={IconCardVariants.VERTICAL} />
          </div>
        </Twosidelayout>
      </Centercolumnlayout>

      <Twosidelayout>
        <img src='https://ergo-unterwegs.de/wp-content/uploads/2021/02/965a5cb6-7a8c-48bc-9b6c-b2d995ab43cd.jpg' />
        <div>
          <Textblock title='Interessiert?' text='Schreibt uns einfach über das Kontaktformular! 
Wir freuen uns, von euch zu hören!' alignment='center' />
          <Mainbutton text='Kontaktiere uns' href='/'/>
        </div>
      </Twosidelayout>
    </>
  )
}

export default Home
