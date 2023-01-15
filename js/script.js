document
  .getElementById('searchbar')
  .addEventListener('keyup', function (event) {
    if (event.keyCode === 13) {
      event.preventDefault();
      document.getElementById('srh').click();
    }
  });
//////////////////////////////////////////////

// $(function () {
//   // Same as document.addEventListener("DOMContentLoaded"...

//   // Same as document.querySelector("#navbarToggle").addEventListener("blur",...
//   $('#navbar-toggler').blur(function (event) {
//     var screenWidth = window.innerWidth;
//     if (screenWidth < 868) {
//       $('#navbarSupportedContent').collapse('hide');
//     }
//   });
// });

//upun pressing enter key too
let totalii;
// function order() {
//   window.open('order.html', '_self');
// }

// function burger() {
//   window.open('index.php','_self');
// }
// function pizza() {
//   window.open('bristo.php', '_self');
// }
// function sandwich() {
//   window.open('index.php', '_self');
// }
// function ice() {
//   window.open('index.php', '_self');
// }

// function movie() {
//   window.open('customer.php','_self');
// }

input.addEventListener('keypress', function (event) {
  if (event.keyCode === 13) {
    search();
  }
});
function search() {
  let input = document.getElementById('searchbar').value;
  input = input.toLowerCase();
  let x = document.getElementsByClassName('item');

  for (i = 0; i < x.length; i++) {
    if (!x[i].innerHTML.toLowerCase().includes(input)) {
      // x[i].style.display = 'none';
      // x[i].scrollIntoView();
    } else {
      x[i].scrollIntoView();

      // document.getElementById('ID').scrollIntoView();
      // x[i].style.display = 'list-item';
    }
  }
}

function pay() {
  // var favoritemovie = 'Shrek';
  let i3 = document.getElementById('i3');
  let b2 = document.getElementById('b2');
  let s1 = document.getElementById('s1');
  let p1 = document.getElementById('p1');

  sessionStorage.setItem('i3', i3.value);
  sessionStorage.setItem('b2', b2.value);
  sessionStorage.setItem('s1', s1.value);
  sessionStorage.setItem('p1', p1.value);

  ////////////////////////////special work to take care in other web pages
  sessionStorage.setItem('i333', i3.value * 5);
  sessionStorage.setItem('b222', b2.value * 10);
  sessionStorage.setItem('s111', s1.value * 5);
  sessionStorage.setItem('p111', p1.value * 15);
  /////////////////////////////////////////////////////////////

  let pi3 = (document.getElementById('i33').innerText = i3.value);
  let pb2 = (document.getElementById('b22').innerText = b2.value);
  let ps1 = (document.getElementById('s11').innerText = s1.value);
  let pp1 = (document.getElementById('p11').innerText = p1.value);

  ////////////////////////////pop item ki waja sa sab sa connect ki waja sa
  let pop = sessionStorage.getItem('pop');
  if (pop === null) {
    pop = 0;
  } else {
    pop = pop;
  }
  // alert(pop + 'pop');

  let pop1 = sessionStorage.getItem('pop1');
  if (pop1 === null) {
    pop1 = 0;
  } else {
    pop1 = pop1;
  }
  let pop2 = sessionStorage.getItem('pop2');
  if (pop2 === null) {
    pop2 = 0;
  } else {
    pop2 = pop2;
  }
  let pop3 = sessionStorage.getItem('pop3');
  if (pop3 === null) {
    pop3 = 0;
  } else {
    pop3 = pop3;
  }
  // alert(pop1 + 'pop1');

  let TOTALPP =
    i3.value * 5 +
    b2.value * 10 +
    s1.value * 5 +
    p1.value * 15 +
    parseInt(pop) +
    parseInt(pop1) +
    parseInt(pop2) +
    parseInt(pop3);

  let bill = (document.getElementById('bill').innerText = TOTALPP);
  /////////////////////////////////////////////////////////////////////
  let valuepp = i3.value * 5 + b2.value * 10 + s1.value * 5 + p1.value * 15;

  sessionStorage.setItem('totalpp', TOTALPP);
  sessionStorage.setItem('total', TOTALPP);

  // sessionStorage.setItem('total', TOTALB);
  sessionStorage.setItem('valuepp', valuepp);
}

// sessionStorage.setItem("favoriteMovie", favoritemovie);

// document.getElementById('order summary').style.display = 'block';
// document.getElementById('total').innerHTML = '<h1>hhiiii</h1>';

// alert('hy');

// let a = document.getElementById('b1');
// let b = document.getElementById('b2');
// // let c = document.getElementById('b3');
// // let d = document.getElementById('b4');

// let e = document.getElementById('p1');
// // let f = document.getElementById('p2');
// // let g = document.getElementById('p3');
// // let h = document.getElementById('p4');

// let i = document.getElementById('s1');
// // let j = document.getElementById('s2');
// // let k = document.getElementById('s3');
// // let l = document.getElementById('s4');

// // let m = document.getElementById('i1');
// // let n = document.getElementById('i2');
// let o = document.getElementById('i3');
// // let p = document.getElementById('i4');

// // sessionStorage.setItem('p1', 'hello');

// ///////////////////////////////////////////////////////////////////////////////
// // let b1 = (document.getElementById('b11').innerText = a.value);
// let b2 = (document.getElementById('b22').innerText = b.value);
// // let b3 = (document.getElementById('b33').innerText = c.value);
// // let b4 = (document.getElementById('b44').innerText = d.value);

// let p1 = (document.getElementById('p11').innerText = e.value);
// // let p2 = (document.getElementById('p22').innerText = f.value);
// // let p3 = (document.getElementById('p33').innerText = g.value);
// // let p4 = (document.getElementById('p44').innerText = h.value);

// let s1 = (document.getElementById('s11').innerText = i.value);
// // let s2 = (document.getElementById('s22').innerText = j.value);
// // let s3 = (document.getElementById('s33').innerText = k.value);
// // let s4 = (document.getElementById('s44').innerText = l.value);

// // let i1 = (document.getElementById('i11').innerText = m.value);
// // let i2 = (document.getElementById('i22').innerText = n.value);
// let i3 = (document.getElementById('i33').innerText = o.value);
// // let i4 = (document.getElementById('i44').innerText = p.value);

// TOTAL +=
//   //   a.value * 12 +
//   b.value * 10 +
//   //   c.value * 8 +
//   //   d.value * 15 +
//   e.value * 15 +
//   //   f.value * 18 +
//   //   g.value * 20 +
//   //   h.value * 20 +
//   i.value * 5 +
//   //   j.value * 9 +
//   //   k.value * 15 +
//   //   l.value * 13 +
//   //   m.value * 7 +
//   //   n.value * 6 +
//   o.value * 5;
// //   p.value * 5;
// let bill = (document.getElementById('bill').innerHTML = TOTAL);

// }

function pay2() {
  ////////////////////////////////////////////////

  let a = document.getElementById('b1');
  let b = document.getElementById('b2');
  let c = document.getElementById('b3');
  let d = document.getElementById('b4');

  sessionStorage.setItem('b1', a.value);
  sessionStorage.setItem('b2', b.value);
  sessionStorage.setItem('b3', c.value);
  sessionStorage.setItem('b4', d.value);

  ////////////////////////////////////////////////

  // if (b.value.onchange) {
  //   bur = b.value;
  // } else {
  //   bur = b22;
  // }
  //////////////////////////////////////////////////

  let b1 = (document.getElementById('b11').innerText = a.value);
  let b2 = (document.getElementById('b22').innerText = b.value);
  let b3 = (document.getElementById('b33').innerText = c.value);
  let b4 = (document.getElementById('b44').innerText = d.value);
  ////////////////////////////////////////////////+i3*5+s1*5+p1*15+b22*10
  let e1 = sessionStorage.getItem('p111');
  let e2 = sessionStorage.getItem('s111');
  let e3 = sessionStorage.getItem('i333');
  let pop = sessionStorage.getItem('pop');
  let pop1 = sessionStorage.getItem('pop1');
  let pop2 = sessionStorage.getItem('pop2');

  if (pop === null) {
    pop = 0;
  } else {
    pop = pop;
  }
  if (pop1 === null) {
    pop1 = 0;
  } else {
    pop1 = pop1;
  }
  if (pop2 === null) {
    pop2 = 0;
  } else {
    pop2 = pop2;
  }
  
  let TOTALB =
    a.value * 12 +
    b.value * 10 +
    c.value * 8 +
    d.value * 15 +
    parseInt(pop) +
    parseInt(pop1) +
    parseInt(pop2) +
    parseInt(e1) +
    parseInt(e2) +
    parseInt(e3);
  let bill = (document.getElementById('bill').innerText = TOTALB);
  /////////////////////////////////////////////////////////////////////
  let valueb = a.value * 12 + b.value * 10 + c.value * 8 + d.value * 15;

  let pop3 = a.value * 12 + c.value * 8 + d.value * 15;

  sessionStorage.setItem('totalb', TOTALB);

  sessionStorage.setItem('total', TOTALB);
  // sessionStorage.setItem('valueb', valueb);
  sessionStorage.setItem('pop3', pop3);
}
function pay3() {
  let e = document.getElementById('p1');
  let f = document.getElementById('p2');
  let g = document.getElementById('p3');
  let h = document.getElementById('p4');

  sessionStorage.setItem('p1', e.value);
  sessionStorage.setItem('p2', f.value);
  sessionStorage.setItem('p3', g.value);
  sessionStorage.setItem('p4', h.value);

  let p1 = (document.getElementById('p11').innerText = e.value);
  let p2 = (document.getElementById('p22').innerText = f.value);
  let p3 = (document.getElementById('p33').innerText = g.value);
  let p4 = (document.getElementById('p44').innerText = h.value);

  /////////////////////////////////////////////////
  ////////////////////////////////////
  let e1 = sessionStorage.getItem('b222');
  let e2 = sessionStorage.getItem('s111');
  let e3 = sessionStorage.getItem('i333');
  let pop = sessionStorage.getItem('pop');
  let pop1 = sessionStorage.getItem('pop1');
  let pop3 = sessionStorage.getItem('pop3');

  if (pop === null) {
    pop = 0;
  } else {
    pop = pop;
  }
  if (pop1 === null) {
    pop1 = 0;
  } else {
    pop1 = pop1;
  }
  if (pop3 === null) {
    pop3 = 0;
  } else {
    pop3 = pop3;
  }

  let TOTALP =
    e.value * 15 +
    f.value * 18 +
    g.value * 20 +
    h.value * 20 +
    parseInt(pop) +
    parseInt(pop1) +
    parseInt(pop3) +
    parseInt(e1) +
    parseInt(e2) +
    parseInt(e3);

  let bill = (document.getElementById('bill').innerText = TOTALP);
  let valuep = e.value * 15 + f.value * 18 + g.value * 20 + h.value * 20;

  let pop2 = f.value * 18 + g.value * 20 + h.value * 20;

  sessionStorage.setItem('totalp', TOTALP);

  sessionStorage.setItem('total', TOTALP);
  // sessionStorage.setItem('valuep', valuep);
  sessionStorage.setItem('pop2', pop2);
}
function pay4() {
  let i = document.getElementById('s1');
  let j = document.getElementById('s2');
  let k = document.getElementById('s3');
  let l = document.getElementById('s4');

  sessionStorage.setItem('s1', i.value);
  sessionStorage.setItem('s2', j.value);
  sessionStorage.setItem('s3', k.value);
  sessionStorage.setItem('s4', l.value);

  let s1 = (document.getElementById('s11').innerText = i.value);
  let s2 = (document.getElementById('s22').innerText = j.value);
  let s3 = (document.getElementById('s33').innerText = k.value);
  let s4 = (document.getElementById('s44').innerText = l.value);

  // }
  let e1 = sessionStorage.getItem('b222');
  let e2 = sessionStorage.getItem('i333');
  let e3 = sessionStorage.getItem('p111');
  let pop1 = sessionStorage.getItem('pop1');
  let pop2 = sessionStorage.getItem('pop2');
  let pop3 = sessionStorage.getItem('pop3');

  if (pop1 === null) {
    pop1 = 0;
  } else {
    pop1 = pop1;
  }
  if (pop2 === null) {
    pop2 = 0;
  } else {
    pop2 = pop2;
  }
  if (pop3 === null) {
    pop3 = 0;
  } else {
    pop3 = pop3;
  }

  // let sandwich = sessionStorage.setItem('sandwich', i.value * 5);
  ////////////////////////////////////
  let TOTALS =
    i.value * 5 +
    j.value * 9 +
    k.value * 15 +
    l.value * 13 +
    parseInt(pop1) +
    parseInt(pop2) +
    parseInt(pop3) +
    parseInt(e1) +
    parseInt(e2) +
    parseInt(e3);
  // parseInt(valuepp);
  let bill = (document.getElementById('bill').innerText = TOTALS);

  let values = i.value * 5 + j.value * 9 + k.value * 15 + l.value * 13;

  let pop = j.value * 9 + k.value * 15 + l.value * 13;
  sessionStorage.setItem('pop', pop);

  sessionStorage.setItem('totals', TOTALS);
  sessionStorage.setItem('total', TOTALS);
  // sessionStorage.setItem('values', values);
}

function pay5() {
  let m = document.getElementById('i1');
  let n = document.getElementById('i2');
  let o = document.getElementById('i3');
  let p = document.getElementById('i4');

  sessionStorage.setItem('i1', m.value);
  sessionStorage.setItem('i2', n.value);
  sessionStorage.setItem('i3', o.value);
  sessionStorage.setItem('i4', p.value);

  let i1 = (document.getElementById('i11').innerText = m.value);
  let i2 = (document.getElementById('i22').innerText = n.value);
  let i3 = (document.getElementById('i33').innerText = o.value);
  let i4 = (document.getElementById('i44').innerText = p.value);

  // let values = sessionStorage.getItem('values');
  // let valueb = sessionStorage.getItem('valueb');
  // let valuep = sessionStorage.getItem('valuep');
  // let valuepp = sessionStorage.getItem('valuepp');

  // ///////////////////////////////////////////////////////////////////////
  // if (values === null) {
  //   values = 0;
  // } else {
  //   values = values;
  // }

  // if (valueb === null) {
  //   valueb = 0;
  // } else {
  //   valueb = valueb;
  // }

  // if (valuep === null) {
  //   valuep = 0;
  // } else {
  //   valuep = valuep;
  // }
  // if (valuepp === null) {
  //   valuepp = 0;
  // } else {
  //   valuepp = valuepp;
  // }
  // ////////////////////only for pp
  // let ice = sessionStorage.getItem('i333');
  // if (ice === null) {
  //   ice = 0;
  // } else {
  //   ice = ice;
  // }
  let e1 = sessionStorage.getItem('b222');
  let e2 = sessionStorage.getItem('s111');
  let e3 = sessionStorage.getItem('p111');
  let pop = sessionStorage.getItem('pop');
  let pop2 = sessionStorage.getItem('pop2');
  let pop3 = sessionStorage.getItem('pop3');

  if (pop === null) {
    pop = 0;
  } else {
    pop = pop;
  }
  if (pop2 === null) {
    pop2 = 0;
  } else {
    pop2 = pop2;
  }
  if (pop3 === null) {
    pop3 = 0;
  } else {
    pop3 = pop3;
  }

  // let icecream = sessionStorage.setItem('icecream', o.value * 5);
  ////////////////////////////////////
  let TOTALI =
    m.value * 6 +
    n.value * 7 +
    o.value * 5 +
    p.value * 8 +
    parseInt(pop) +
    parseInt(pop2) +
    parseInt(pop3) +
    parseInt(e1) +
    parseInt(e2) +
    parseInt(e3);

  let bill = (document.getElementById('bill').innerText = TOTALI);

  let valuei = m.value * 6 + n.value * 7 + o.value * 5 + p.value * 8;

  let pop1 = m.value * 6 + n.value * 7 + p.value * 8;

  sessionStorage.setItem('totali', TOTALI);
  sessionStorage.setItem('total', TOTALI);
  // sessionStorage.setItem('valuei', valuei);
  sessionStorage.setItem('pop1', pop1);
}
//////////////////////////////////////////////////
//retain info if page accidently refrsshes
// Get the text field that we're going to track
// let field = document.getElementById('i3');

// // See if we have an autosave value
// // (this will only happen if the page is accidentally refreshed)
// if (sessionStorage.getItem('autosave')) {
//   // Restore the contents of the text field
//   field.value = sessionStorage.getItem('autosave');
// }

// // Listen for changes in the text field
// field.addEventListener('change', function () {
//   // And save the results into the session storage object
//   sessionStorage.setItem('autosave', field.value);
// });
function submitForms() {
  // alert('d');
  let name = document.getElementById('name').value;
  let number = document.getElementById('number').value;
  let address = document.getElementById('address').value;
  ///////////////////////////////////////////////////////
  let credit = document.getElementById('credit');
  let paypal = document.getElementById('paypal');
  ///////////////////////////////////////////////////////

  // let card_name = document.getElementById('card_name').value;
  // let card_num = document.getElementById('card_num').value;
  // let my = document.getElementById('my').value;
  // let security_code = document.getElementById('security_code').value;
  // let postal_code = document.getElementById('postal_code').value;
  // ///////////////////////////////////////////////////////
  // let paypal_info = document.getElementById('paypal_info').value;

  if (name === '') {
    alert('plz fill name box!');
  } else {
    if (number === '') {
      alert('plz fill number box!');
    } else {
      if (address === '') {
        alert('plz fill address box!');
      } else {
        if (credit.checked || paypal.checked) {
          if (credit.checked) {
            let card_name = document.getElementById('card_name').value;
            let card_num = document.getElementById('card_num').value;
            let my = document.getElementById('my').value;
            let security_code = document.getElementById('security_code').value;
            let postal_code = document.getElementById('postal_code').value;

            if (card_name === '') {
              alert('plz fill card name box!');
            } else {
              if (card_num === '') {
                alert('plz fill card number box!');
              } else {
                if (my === '') {
                  alert('plz fill month and year box!');
                } else {
                  if (security_code === '') {
                    alert('plz fill security box box!');
                  } else {
                    if (postal_code === '') {
                      alert('plz postal code box!');
                    } else {
                      document.getElementById('form1').submit();
                      document.getElementById('form2').submit();
                    }
                  }
                }
              }
            }
          } else {
            let paypal_info = document.getElementById('paypal_info').value;

            if (paypal_info === '') {
              alert('enter your paypal information first!');
            } else {
              document.getElementById('form1').submit();
              document.getElementById('form2').submit();
            }
          }
        } else {
          alert('plz select payment method!');
        }
      }
    }
  }
}

// var f = document.forms.updateDB;
// var postData = [];
// for (var i = 0; i < f.elements.length; i++) {
//   postData.push(f.elements[i].name + '=' + f.elements[i].value);
// }
// var xhr = new XMLHttpRequest();
// xhr.open('POST', 'mypage.php', true);
// xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
// xhr.send(postData.join('&'));

// document.forms.payPal.submit();
