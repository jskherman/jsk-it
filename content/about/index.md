---
title: "About"
subtitle: "Who am I? How philosophical of you."
description: "About Je Sian Keith Herman. This section details what he does & everything else you might want to know about him."
slug: "about"
date: 2020-02-02T00:02:02+08:00
lastmod: 2021-02-02T00:02:02+08:00
typeit: true
comment:
  enable: false
# toc:
#   auto: false
---

{{< typeit >}} Hi there! Welcome to my weblog. 👋{{< /typeit >}}

I'm [Je Sian Keith Herman](#firstname) and I'm your average enjoyer of 🍨 ice cream, ☕ iced coffee, and 🍹 iced tea. I am currently a 4th year student at [Bicol University][BU] studying [Chemical Engineering][ChE].

I'm passionate about data, data visualization, and programming. I am a data-driven person and I love to find patterns and insights in data.

I am also interested in creating visualizations to communicate my findings. I am a self-taught programmer (not quite there yet though) and I enjoy creating scripts in my free time to automate tasks and to make my work more efficient.[^1]

This is the place where I share my thoughts, tools, interests, projects, showcases, experiences, etc. Check out the [blog](https://www.jskherman.com/blog) for some of it. *Feel free to [ping me or give feedback](#contact-me)* through any of my contact details.

> If you're looking for what I am up to these days, check out my **[Now page](/now)**.

## FAQ

<details>
<summary>Fancy some background music while you're here?</summary>

{{< music url="https://res.cloudinary.com/jskherman/video/upload/v1641875513/Website/isekai_shokudou-main_ost.mp3" name="Restaurant to Another World (Isekai Shokudou) Main Theme" artist="Miho Tsujibayashi" >}}
</details>
<details>
<summary id="firstname">How do you pronounce your first name?</summary>

> My first name "Je Sian Keith" is pronounced as /**ʤi ʃan kiːθ**/ (ji shan kith).
</details>
<details>
<summary>What is your horoscope?</summary>

> It’s Gemini.
</details>

<details>
<summary>Hotel?</summary>

> Trivago[^2]

</details>

## Contact Me

Want to have a chat with me? Feel free to drop a DM.

These are the platforms[^3] you can find me on:

- Twitter: [@jskherman][twitter]
- LinkedIn: [linkedin.com/in/jskherman][linkedin]

<!-- Footnotes -->

[^1]: This blog is an example project.
[^2]: lol #NotSponsored
[^3]: NOTE: I'm more active on Twitter, so you'll definitely want to ping me there.

<!-- Reference Links -->

[twitter]: https://twitter.com/jskherman
[linkedin]: https://www.linkedin.com/in/jskherman
[BU]: https://bicol-u.edu.ph/
[ChE]: https://www.icheme.org/education/whynotchemeng/

You can also message me directly via the contact form below:

<!-- Google Form -->
<!-- <iframe src="https://docs.google.com/forms/d/e/1FAIpQLScR_cTaQg_CJ6OdpBNJl_mhrT-X7Vey1Fe0mWR552ucKDloWA/viewform?embedded=true" width="640" height="1010" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe> -->

<form
  name="contact"
  action="/thank-you/"
  method="POST"
  data-netlify-recaptcha="true"
  data-netlify="true"
>
  <input type="hidden" name="form-name" value="contact" />

  <!-- Text input-->
  <div class="form-group">
    <label for="Name"></label>
    <div>
      <input
        id="contact-form-name"
        name="Name"
        type="text"
        placeholder="Name"
        required=""
        autocomplete="off"
      >
    </div>
  </div>

  <!-- Text input-->
  <div class="form-group">
    <label for="Email"></label>
    <div>
      <input
        id="contact-form-email"
        name="Email"
        type="email"
        placeholder="Email Address"
        required=""
        autocomplete="off"
      >
    </div>
  </div>

  <!-- Text input-->
  <div class="form-group">
    <label for="Subject"></label>
    <div>
      <input
        id="contact-form-subject"
        name="Subject"
        type="text"
        placeholder="Subject"
        required=""
        autocomplete="off"
      >
    </div>
  </div>
  
  <!-- Textarea -->
  <div class="form-group">
    <label for=""></label>
    <textarea
      class="form-control"
      id="contact-form-message"
      name="Message"
      placeholder="What's up?"
      required=""
      rows="8"
    ></textarea>
  </div>

  <!-- ReCaptcha -->
  <div data-netlify-recaptcha="true"></div>
  <br/>

  <!-- Button -->
  <div class="form-group">
    <button type="submit" value="Submit" id="Form-submit" class="form-submit">Submit</button>
  </div>

  <style>
      form {
      padding: 15px;
      margin: 5px;
      box-shadow: 0 2px 5px --global-background-color;
      background: --global-background-color;
      }
      input, textarea {
      width: calc(100% - 18px);
      padding: 8px;
      margin-bottom: 10px;
      border: 1px solid #1c87c9;
      outline: none;
      caret-color: #161209;
      color: var(--global-font-color);
      }
      input::placeholder {
      color: var(--global-font-color);
      }
      textarea::placeholder {
      color: var(--global-font-color);
      }

      .form-submit {
      width: calc(100% - 18px);
      padding: 10px;
      border: none;
      background: #1c87c9;
      font-size: 16px;
      font-weight: 400;
      color: #fff;
      }

      .form-submit:hover {
      background: #2371a0;
      }
  </style>

</form>
