


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>haskell-mode/haskell-mode.el at master · haskell/haskell-mode · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="https://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta property="og:image" content="https://github.global.ssl.fastly.net/images/modules/logos_page/Octocat.png">
    <meta name="hostname" content="fe1.rs.github.com">
    <meta name="ruby" content="ruby 2.0.0p247-github4 (2013-06-27) [x86_64-linux]">
    <link rel="assets" href="https://github.global.ssl.fastly.net/">
    <link rel="xhr-socket" href="/_sockets" />
    
    


    <meta name="msapplication-TileImage" content="/windows-tile.png" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="selected-link" value="repo_source" data-pjax-transient />
    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" />
    

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="b59RVwfdujs4PhHriRHgcb2rgBSTZQ4ACYD01mDlxI0=" name="csrf-token" />

    <link href="https://github.global.ssl.fastly.net/assets/github-00c0e7652fb6f0fde282f6efba767cc4127f7149.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://github.global.ssl.fastly.net/assets/github2-599048231308405a57ed982f74ba5e249891263a.css" media="all" rel="stylesheet" type="text/css" />
    


      <script src="https://github.global.ssl.fastly.net/assets/frameworks-f86a2975a82dceee28e5afe598d1ebbfd7109d79.js" type="text/javascript"></script>
      <script src="https://github.global.ssl.fastly.net/assets/github-b4c56179d3cda11abae549aff4f74e9c470520e5.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="3f7f684542b2c6dd622c2372e107a6de">

        <link data-pjax-transient rel='permalink' href='/haskell/haskell-mode/blob/b6f7c82e8298081a945e85187a79108b61a49294/haskell-mode.el'>
  <meta property="og:title" content="haskell-mode"/>
  <meta property="og:type" content="githubog:gitrepository"/>
  <meta property="og:url" content="https://github.com/haskell/haskell-mode"/>
  <meta property="og:image" content="https://github.global.ssl.fastly.net/images/gravatars/gravatar-user-420.png"/>
  <meta property="og:site_name" content="GitHub"/>
  <meta property="og:description" content="haskell-mode - Emacs mode for Haskell"/>

  <meta name="description" content="haskell-mode - Emacs mode for Haskell" />

  <meta content="450574" name="octolytics-dimension-user_id" /><meta content="haskell" name="octolytics-dimension-user_login" /><meta content="3723999" name="octolytics-dimension-repository_id" /><meta content="haskell/haskell-mode" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="3723999" name="octolytics-dimension-repository_network_root_id" /><meta content="haskell/haskell-mode" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/haskell/haskell-mode/commits/master.atom" rel="alternate" title="Recent Commits to haskell-mode:master" type="application/atom+xml" />

  </head>


  <body class="logged_out page-blob windows vis-public env-production ">

    <div class="wrapper">
      
      
      


      
      <div class="header header-logged-out">
  <div class="container clearfix">

    <a class="header-logo-wordmark" href="https://github.com/">
      <span class="mega-octicon octicon-logo-github"></span>
    </a>

    <div class="header-actions">
        <a class="button primary" href="/signup">Sign up</a>
      <a class="button" href="/login?return_to=%2Fhaskell%2Fhaskell-mode%2Fblob%2Fmaster%2Fhaskell-mode.el">Sign in</a>
    </div>

    <div class="command-bar js-command-bar  in-repository">


      <ul class="top-nav">
          <li class="explore"><a href="/explore">Explore</a></li>
        <li class="features"><a href="/features">Features</a></li>
          <li class="enterprise"><a href="https://enterprise.github.com/">Enterprise</a></li>
          <li class="blog"><a href="/blog">Blog</a></li>
      </ul>
        <form accept-charset="UTF-8" action="/search" class="command-bar-form" id="top_search_form" method="get">

<input type="text" data-hotkey="/ s" name="q" id="js-command-bar-field" placeholder="Search or type a command" tabindex="1" autocapitalize="off"
    
    
      data-repo="haskell/haskell-mode"
      data-branch="master"
      data-sha="6728af2ee5eef17d330aee91038a2d97cb4529b2"
  >

    <input type="hidden" name="nwo" value="haskell/haskell-mode" />

    <div class="select-menu js-menu-container js-select-menu search-context-select-menu">
      <span class="minibutton select-menu-button js-menu-target">
        <span class="js-select-button">This repository</span>
      </span>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container">
        <div class="select-menu-modal">

          <div class="select-menu-item js-navigation-item js-this-repository-navigation-item selected">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" class="js-search-this-repository" name="search_target" value="repository" checked="checked" />
            <div class="select-menu-item-text js-select-button-text">This repository</div>
          </div> <!-- /.select-menu-item -->

          <div class="select-menu-item js-navigation-item js-all-repositories-navigation-item">
            <span class="select-menu-item-icon octicon octicon-check"></span>
            <input type="radio" name="search_target" value="global" />
            <div class="select-menu-item-text js-select-button-text">All repositories</div>
          </div> <!-- /.select-menu-item -->

        </div>
      </div>
    </div>

  <span class="octicon help tooltipped downwards" title="Show command bar help">
    <span class="octicon octicon-question"></span>
  </span>


  <input type="hidden" name="ref" value="cmdform">

</form>
    </div>

  </div>
</div>


      


          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        

<ul class="pagehead-actions">


  <li>
  <a href="/login?return_to=%2Fhaskell%2Fhaskell-mode"
  class="minibutton with-count js-toggler-target star-button entice tooltipped upwards"
  title="You must be signed in to use this feature" rel="nofollow">
  <span class="octicon octicon-star"></span>Star
</a>
<a class="social-count js-social-count" href="/haskell/haskell-mode/stargazers">
  215
</a>

  </li>

    <li>
      <a href="/login?return_to=%2Fhaskell%2Fhaskell-mode"
        class="minibutton with-count js-toggler-target fork-button entice tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="octicon octicon-git-branch"></span>Fork
      </a>
      <a href="/haskell/haskell-mode/network" class="social-count">
        63
      </a>
    </li>
</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="repo-label"><span>public</span></span>
          <span class="mega-octicon octicon-repo"></span>
          <span class="author">
            <a href="/haskell" class="url fn" itemprop="url" rel="author"><span itemprop="title">haskell</span></a></span
          ><span class="repohead-name-divider">/</span><strong
          ><a href="/haskell/haskell-mode" class="js-current-repository js-repo-home-link">haskell-mode</a></strong>

          <span class="page-context-loader">
            <img alt="Octocat-spinner-32" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">

      <div class="repository-with-sidebar repo-container ">

        <div class="repository-sidebar">
            

<div class="repo-nav repo-nav-full js-repository-container-pjax js-octicon-loaders">
  <div class="repo-nav-contents">
    <ul class="repo-menu">
      <li class="tooltipped leftwards" title="Code">
        <a href="/haskell/haskell-mode" aria-label="Code" class="js-selected-navigation-item selected" data-gotokey="c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_tags repo_branches /haskell/haskell-mode">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped leftwards" title="Issues">
          <a href="/haskell/haskell-mode/issues" aria-label="Issues" class="js-selected-navigation-item js-disable-pjax" data-gotokey="i" data-selected-links="repo_issues /haskell/haskell-mode/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class='counter'>35</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped leftwards" title="Pull Requests"><a href="/haskell/haskell-mode/pulls" aria-label="Pull Requests" class="js-selected-navigation-item js-disable-pjax" data-gotokey="p" data-selected-links="repo_pulls /haskell/haskell-mode/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class='counter'>1</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped leftwards" title="Wiki">
          <a href="/haskell/haskell-mode/wiki" aria-label="Wiki" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_wiki /haskell/haskell-mode/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="repo-menu-separator"></div>
    <ul class="repo-menu">

      <li class="tooltipped leftwards" title="Pulse">
        <a href="/haskell/haskell-mode/pulse" aria-label="Pulse" class="js-selected-navigation-item " data-pjax="true" data-selected-links="pulse /haskell/haskell-mode/pulse">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Graphs">
        <a href="/haskell/haskell-mode/graphs" aria-label="Graphs" class="js-selected-navigation-item " data-pjax="true" data-selected-links="repo_graphs repo_contributors /haskell/haskell-mode/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped leftwards" title="Network">
        <a href="/haskell/haskell-mode/network" aria-label="Network" class="js-selected-navigation-item js-disable-pjax" data-selected-links="repo_network /haskell/haskell-mode/network">
          <span class="octicon octicon-git-branch"></span> <span class="full-word">Network</span>
          <img alt="Octocat-spinner-32" class="mini-loader" height="16" src="https://github.global.ssl.fastly.net/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

            <div class="only-with-full-nav">
              

  

<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>

  <input type="text" class="clone js-url-field"
         value="https://github.com/haskell/haskell-mode.git" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/haskell/haskell-mode.git" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>

  

<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>

  <input type="text" class="clone js-url-field"
         value="https://github.com/haskell/haskell-mode" readonly="readonly">

  <span class="js-zeroclipboard url-box-clippy minibutton zeroclipboard-button" data-clipboard-text="https://github.com/haskell/haskell-mode" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
</div>



<p class="clone-options">You can clone with
    <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
    <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>,
  and <a href="https://help.github.com/articles/which-remote-url-should-i-use">other methods.</a>
</p>


  <a href="http://windows.github.com" class="minibutton sidebar-button">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

                <a href="/haskell/haskell-mode/archive/master.zip"
                   class="minibutton sidebar-button"
                   title="Download this repository as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
            </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:a6483d1671e0d6b606279c8102a77db0 -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:a6483d1671e0d6b606279c8102a77db0 -->

<p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

<a href="/haskell/haskell-mode/find/master" data-pjax data-hotkey="t" style="display:none">Show File Finder</a>

<div class="file-navigation">
  


<div class="select-menu js-menu-container js-select-menu" >
  <span class="minibutton select-menu-button js-menu-target" data-hotkey="w"
    data-master-branch="master"
    data-ref="master" role="button" aria-label="Switch branches or tags">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-remove-close js-menu-close"></span>
      </div> <!-- /.select-menu-header -->

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
            </li>
          </ul>
        </div><!-- /.select-menu-tabs -->
      </div><!-- /.select-menu-filters -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/blob/darcs/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="darcs" data-skip-pjax="true" rel="nofollow" title="darcs">darcs</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/blob/gh-pages/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="gh-pages" data-skip-pjax="true" rel="nofollow" title="gh-pages">gh-pages</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/blob/haskell-bot/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="haskell-bot" data-skip-pjax="true" rel="nofollow" title="haskell-bot">haskell-bot</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/blob/highlight-type-info/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="highlight-type-info" data-skip-pjax="true" rel="nofollow" title="highlight-type-info">highlight-type-info</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/blob/master/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" data-skip-pjax="true" rel="nofollow" title="master">master</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/blob/sort-imports/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="sort-imports" data-skip-pjax="true" rel="nofollow" title="sort-imports">sort-imports</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/tree/v13.07/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v13.07" data-skip-pjax="true" rel="nofollow" title="v13.07">v13.07</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/tree/v13.06/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="v13.06" data-skip-pjax="true" rel="nofollow" title="v13.06">v13.06</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/tree/2_9_1/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2_9_1" data-skip-pjax="true" rel="nofollow" title="2_9_1">2_9_1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/tree/2_9_0/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2_9_0" data-skip-pjax="true" rel="nofollow" title="2_9_0">2_9_0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/tree/2_8_0/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2_8_0" data-skip-pjax="true" rel="nofollow" title="2_8_0">2_8_0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/tree/2_7_0/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2_7_0" data-skip-pjax="true" rel="nofollow" title="2_7_0">2_7_0</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/tree/2_6_4/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2_6_4" data-skip-pjax="true" rel="nofollow" title="2_6_4">2_6_4</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/tree/2_6_3/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2_6_3" data-skip-pjax="true" rel="nofollow" title="2_6_3">2_6_3</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/tree/2_6_2/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2_6_2" data-skip-pjax="true" rel="nofollow" title="2_6_2">2_6_2</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/tree/2_6_1/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2_6_1" data-skip-pjax="true" rel="nofollow" title="2_6_1">2_6_1</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/tree/2_6/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2_6" data-skip-pjax="true" rel="nofollow" title="2_6">2_6</a>
            </div> <!-- /.select-menu-item -->
            <div class="select-menu-item js-navigation-item ">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/haskell/haskell-mode/tree/2_5_1/haskell-mode.el" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="2_5_1" data-skip-pjax="true" rel="nofollow" title="2_5_1">2_5_1</a>
            </div> <!-- /.select-menu-item -->
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/haskell/haskell-mode" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">haskell-mode</span></a></span></span><span class="separator"> / </span><strong class="final-path">haskell-mode.el</strong> <span class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="haskell-mode.el" data-copied-hint="copied!" title="copy to clipboard"><span class="octicon octicon-clippy"></span></span>
  </div>
</div>


  
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/3468d23f15a9f631136b508b967b0fbe?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/hvr" rel="author">hvr</a></span>
    <time class="js-relative-date" datetime="2013-07-28T04:35:18-07:00" title="2013-07-28 04:35:18">July 28, 2013</time>
    <div class="commit-title">
        <a href="/haskell/haskell-mode/commit/7c6d79977dfe9d6426bc94adc2f6cee3c8ee4c76" class="message" data-pjax="true" title="Pre-evaluate conditional `(fboundp &#39;help-buffer)&#39; expression

This expression is always t for Emacs 23/24, so there&#39;s little
reason to have this for legacy support in there.">Pre-evaluate conditional `(fboundp 'help-buffer)' expression</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>18</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="chrisdone" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=chrisdone"><img height="20" src="https://secure.gravatar.com/avatar/fed2705cf484a7ffbc3d44a742b686e5?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="invalid-email-address" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=invalid-email-address"><img height="20" src="https://secure.gravatar.com/avatar/4fca794da0cf08804f99048d3c8b39c1?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="hvr" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=hvr"><img height="20" src="https://secure.gravatar.com/avatar/3468d23f15a9f631136b508b967b0fbe?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="Baughn" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=Baughn"><img height="20" src="https://secure.gravatar.com/avatar/c17cb89a1dd282b1ebc6c6f325db509f?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="gregorycollins" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=gregorycollins"><img height="20" src="https://secure.gravatar.com/avatar/15252d228151a3dc4bb4c0e824636083?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="alexott" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=alexott"><img height="20" src="https://secure.gravatar.com/avatar/9b31b9d123bff80f00317a1df0dd00e2?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="scvalex" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=scvalex"><img height="20" src="https://secure.gravatar.com/avatar/c7951fdc0d8ebdbffbb47d54627dbbe1?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="akamch" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=akamch"><img height="20" src="https://secure.gravatar.com/avatar/84a5f643d54cb2bba79b8b4d300e9336?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="stepfaster" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=stepfaster"><img height="20" src="https://secure.gravatar.com/avatar/d41d8cd98f00b204e9800998ecf8427e?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="mstrlu" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=mstrlu"><img height="20" src="https://secure.gravatar.com/avatar/4042f123a67a22395733ebc914ea5a26?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="pheaver" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=pheaver"><img height="20" src="https://secure.gravatar.com/avatar/c7aa22f7245b0301338eaef46602a447?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="deftsp" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=deftsp"><img height="20" src="https://secure.gravatar.com/avatar/690250c85198d5b8cf24f6d0673351b3?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="craigcitro" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=craigcitro"><img height="20" src="https://secure.gravatar.com/avatar/f71dbe573abe6b5b6b607088255bc9ec?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="roysc" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=roysc"><img height="20" src="https://secure.gravatar.com/avatar/c147b0b3321dd12424d88876f8b7c820?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="bos" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=bos"><img height="20" src="https://secure.gravatar.com/avatar/76d19f57f5d4c2d36f1f417c5ac5beae?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="rgtbctltpx" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=rgtbctltpx"><img height="20" src="https://secure.gravatar.com/avatar/81df8a335a4154c826732e3b119ceedc?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="leoliu" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=leoliu"><img height="20" src="https://secure.gravatar.com/avatar/4748f4b52a2a0fe03843414eef3eb8b7?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="jwiegley" href="/haskell/haskell-mode/commits/master/haskell-mode.el?author=jwiegley"><img height="20" src="https://secure.gravatar.com/avatar/910fdec093deffebb92d7db019b5996a?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/fed2705cf484a7ffbc3d44a742b686e5?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/chrisdone">chrisdone</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/4fca794da0cf08804f99048d3c8b39c1?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/invalid-email-address">invalid-email-address</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/3468d23f15a9f631136b508b967b0fbe?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/hvr">hvr</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/c17cb89a1dd282b1ebc6c6f325db509f?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/Baughn">Baughn</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/15252d228151a3dc4bb4c0e824636083?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/gregorycollins">gregorycollins</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/9b31b9d123bff80f00317a1df0dd00e2?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/alexott">alexott</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/c7951fdc0d8ebdbffbb47d54627dbbe1?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/scvalex">scvalex</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/84a5f643d54cb2bba79b8b4d300e9336?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/akamch">akamch</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/d41d8cd98f00b204e9800998ecf8427e?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/stepfaster">stepfaster</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/4042f123a67a22395733ebc914ea5a26?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/mstrlu">mstrlu</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/c7aa22f7245b0301338eaef46602a447?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/pheaver">pheaver</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/690250c85198d5b8cf24f6d0673351b3?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/deftsp">deftsp</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/f71dbe573abe6b5b6b607088255bc9ec?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/craigcitro">craigcitro</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/c147b0b3321dd12424d88876f8b7c820?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/roysc">roysc</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/76d19f57f5d4c2d36f1f417c5ac5beae?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/bos">bos</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/81df8a335a4154c826732e3b119ceedc?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/rgtbctltpx">rgtbctltpx</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/4748f4b52a2a0fe03843414eef3eb8b7?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/leoliu">leoliu</a>
        </li>
        <li class="facebox-user-list-item">
          <img height="24" src="https://secure.gravatar.com/avatar/910fdec093deffebb92d7db019b5996a?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/jwiegley">jwiegley</a>
        </li>
      </ul>
    </div>
  </div>


<div id="files" class="bubble">
  <div class="file">
    <div class="meta">
      <div class="info">
        <span class="icon"><b class="octicon octicon-file-text"></b></span>
        <span class="mode" title="File Mode">file</span>
          <span>858 lines (769 sloc)</span>
        <span>34.232 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
              <a class="minibutton disabled js-entice" href=""
                 data-entice="You must be signed in to make or propose changes">Edit</a>
          <a href="/haskell/haskell-mode/raw/master/haskell-mode.el" class="button minibutton " id="raw-url">Raw</a>
            <a href="/haskell/haskell-mode/blame/master/haskell-mode.el" class="button minibutton ">Blame</a>
          <a href="/haskell/haskell-mode/commits/master/haskell-mode.el" class="button minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->
            <a class="minibutton danger empty-icon js-entice" href=""
               data-entice="You must be signed in and on a branch to make or propose changes">
            Delete
          </a>
      </div><!-- /.actions -->

    </div>
        <div class="blob-wrapper data type-emacs-lisp js-blob-data">
        <table class="file-code file-diff">
          <tr class="file-code-line">
            <td class="blob-line-nums">
              <span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
<span id="L329" rel="#L329">329</span>
<span id="L330" rel="#L330">330</span>
<span id="L331" rel="#L331">331</span>
<span id="L332" rel="#L332">332</span>
<span id="L333" rel="#L333">333</span>
<span id="L334" rel="#L334">334</span>
<span id="L335" rel="#L335">335</span>
<span id="L336" rel="#L336">336</span>
<span id="L337" rel="#L337">337</span>
<span id="L338" rel="#L338">338</span>
<span id="L339" rel="#L339">339</span>
<span id="L340" rel="#L340">340</span>
<span id="L341" rel="#L341">341</span>
<span id="L342" rel="#L342">342</span>
<span id="L343" rel="#L343">343</span>
<span id="L344" rel="#L344">344</span>
<span id="L345" rel="#L345">345</span>
<span id="L346" rel="#L346">346</span>
<span id="L347" rel="#L347">347</span>
<span id="L348" rel="#L348">348</span>
<span id="L349" rel="#L349">349</span>
<span id="L350" rel="#L350">350</span>
<span id="L351" rel="#L351">351</span>
<span id="L352" rel="#L352">352</span>
<span id="L353" rel="#L353">353</span>
<span id="L354" rel="#L354">354</span>
<span id="L355" rel="#L355">355</span>
<span id="L356" rel="#L356">356</span>
<span id="L357" rel="#L357">357</span>
<span id="L358" rel="#L358">358</span>
<span id="L359" rel="#L359">359</span>
<span id="L360" rel="#L360">360</span>
<span id="L361" rel="#L361">361</span>
<span id="L362" rel="#L362">362</span>
<span id="L363" rel="#L363">363</span>
<span id="L364" rel="#L364">364</span>
<span id="L365" rel="#L365">365</span>
<span id="L366" rel="#L366">366</span>
<span id="L367" rel="#L367">367</span>
<span id="L368" rel="#L368">368</span>
<span id="L369" rel="#L369">369</span>
<span id="L370" rel="#L370">370</span>
<span id="L371" rel="#L371">371</span>
<span id="L372" rel="#L372">372</span>
<span id="L373" rel="#L373">373</span>
<span id="L374" rel="#L374">374</span>
<span id="L375" rel="#L375">375</span>
<span id="L376" rel="#L376">376</span>
<span id="L377" rel="#L377">377</span>
<span id="L378" rel="#L378">378</span>
<span id="L379" rel="#L379">379</span>
<span id="L380" rel="#L380">380</span>
<span id="L381" rel="#L381">381</span>
<span id="L382" rel="#L382">382</span>
<span id="L383" rel="#L383">383</span>
<span id="L384" rel="#L384">384</span>
<span id="L385" rel="#L385">385</span>
<span id="L386" rel="#L386">386</span>
<span id="L387" rel="#L387">387</span>
<span id="L388" rel="#L388">388</span>
<span id="L389" rel="#L389">389</span>
<span id="L390" rel="#L390">390</span>
<span id="L391" rel="#L391">391</span>
<span id="L392" rel="#L392">392</span>
<span id="L393" rel="#L393">393</span>
<span id="L394" rel="#L394">394</span>
<span id="L395" rel="#L395">395</span>
<span id="L396" rel="#L396">396</span>
<span id="L397" rel="#L397">397</span>
<span id="L398" rel="#L398">398</span>
<span id="L399" rel="#L399">399</span>
<span id="L400" rel="#L400">400</span>
<span id="L401" rel="#L401">401</span>
<span id="L402" rel="#L402">402</span>
<span id="L403" rel="#L403">403</span>
<span id="L404" rel="#L404">404</span>
<span id="L405" rel="#L405">405</span>
<span id="L406" rel="#L406">406</span>
<span id="L407" rel="#L407">407</span>
<span id="L408" rel="#L408">408</span>
<span id="L409" rel="#L409">409</span>
<span id="L410" rel="#L410">410</span>
<span id="L411" rel="#L411">411</span>
<span id="L412" rel="#L412">412</span>
<span id="L413" rel="#L413">413</span>
<span id="L414" rel="#L414">414</span>
<span id="L415" rel="#L415">415</span>
<span id="L416" rel="#L416">416</span>
<span id="L417" rel="#L417">417</span>
<span id="L418" rel="#L418">418</span>
<span id="L419" rel="#L419">419</span>
<span id="L420" rel="#L420">420</span>
<span id="L421" rel="#L421">421</span>
<span id="L422" rel="#L422">422</span>
<span id="L423" rel="#L423">423</span>
<span id="L424" rel="#L424">424</span>
<span id="L425" rel="#L425">425</span>
<span id="L426" rel="#L426">426</span>
<span id="L427" rel="#L427">427</span>
<span id="L428" rel="#L428">428</span>
<span id="L429" rel="#L429">429</span>
<span id="L430" rel="#L430">430</span>
<span id="L431" rel="#L431">431</span>
<span id="L432" rel="#L432">432</span>
<span id="L433" rel="#L433">433</span>
<span id="L434" rel="#L434">434</span>
<span id="L435" rel="#L435">435</span>
<span id="L436" rel="#L436">436</span>
<span id="L437" rel="#L437">437</span>
<span id="L438" rel="#L438">438</span>
<span id="L439" rel="#L439">439</span>
<span id="L440" rel="#L440">440</span>
<span id="L441" rel="#L441">441</span>
<span id="L442" rel="#L442">442</span>
<span id="L443" rel="#L443">443</span>
<span id="L444" rel="#L444">444</span>
<span id="L445" rel="#L445">445</span>
<span id="L446" rel="#L446">446</span>
<span id="L447" rel="#L447">447</span>
<span id="L448" rel="#L448">448</span>
<span id="L449" rel="#L449">449</span>
<span id="L450" rel="#L450">450</span>
<span id="L451" rel="#L451">451</span>
<span id="L452" rel="#L452">452</span>
<span id="L453" rel="#L453">453</span>
<span id="L454" rel="#L454">454</span>
<span id="L455" rel="#L455">455</span>
<span id="L456" rel="#L456">456</span>
<span id="L457" rel="#L457">457</span>
<span id="L458" rel="#L458">458</span>
<span id="L459" rel="#L459">459</span>
<span id="L460" rel="#L460">460</span>
<span id="L461" rel="#L461">461</span>
<span id="L462" rel="#L462">462</span>
<span id="L463" rel="#L463">463</span>
<span id="L464" rel="#L464">464</span>
<span id="L465" rel="#L465">465</span>
<span id="L466" rel="#L466">466</span>
<span id="L467" rel="#L467">467</span>
<span id="L468" rel="#L468">468</span>
<span id="L469" rel="#L469">469</span>
<span id="L470" rel="#L470">470</span>
<span id="L471" rel="#L471">471</span>
<span id="L472" rel="#L472">472</span>
<span id="L473" rel="#L473">473</span>
<span id="L474" rel="#L474">474</span>
<span id="L475" rel="#L475">475</span>
<span id="L476" rel="#L476">476</span>
<span id="L477" rel="#L477">477</span>
<span id="L478" rel="#L478">478</span>
<span id="L479" rel="#L479">479</span>
<span id="L480" rel="#L480">480</span>
<span id="L481" rel="#L481">481</span>
<span id="L482" rel="#L482">482</span>
<span id="L483" rel="#L483">483</span>
<span id="L484" rel="#L484">484</span>
<span id="L485" rel="#L485">485</span>
<span id="L486" rel="#L486">486</span>
<span id="L487" rel="#L487">487</span>
<span id="L488" rel="#L488">488</span>
<span id="L489" rel="#L489">489</span>
<span id="L490" rel="#L490">490</span>
<span id="L491" rel="#L491">491</span>
<span id="L492" rel="#L492">492</span>
<span id="L493" rel="#L493">493</span>
<span id="L494" rel="#L494">494</span>
<span id="L495" rel="#L495">495</span>
<span id="L496" rel="#L496">496</span>
<span id="L497" rel="#L497">497</span>
<span id="L498" rel="#L498">498</span>
<span id="L499" rel="#L499">499</span>
<span id="L500" rel="#L500">500</span>
<span id="L501" rel="#L501">501</span>
<span id="L502" rel="#L502">502</span>
<span id="L503" rel="#L503">503</span>
<span id="L504" rel="#L504">504</span>
<span id="L505" rel="#L505">505</span>
<span id="L506" rel="#L506">506</span>
<span id="L507" rel="#L507">507</span>
<span id="L508" rel="#L508">508</span>
<span id="L509" rel="#L509">509</span>
<span id="L510" rel="#L510">510</span>
<span id="L511" rel="#L511">511</span>
<span id="L512" rel="#L512">512</span>
<span id="L513" rel="#L513">513</span>
<span id="L514" rel="#L514">514</span>
<span id="L515" rel="#L515">515</span>
<span id="L516" rel="#L516">516</span>
<span id="L517" rel="#L517">517</span>
<span id="L518" rel="#L518">518</span>
<span id="L519" rel="#L519">519</span>
<span id="L520" rel="#L520">520</span>
<span id="L521" rel="#L521">521</span>
<span id="L522" rel="#L522">522</span>
<span id="L523" rel="#L523">523</span>
<span id="L524" rel="#L524">524</span>
<span id="L525" rel="#L525">525</span>
<span id="L526" rel="#L526">526</span>
<span id="L527" rel="#L527">527</span>
<span id="L528" rel="#L528">528</span>
<span id="L529" rel="#L529">529</span>
<span id="L530" rel="#L530">530</span>
<span id="L531" rel="#L531">531</span>
<span id="L532" rel="#L532">532</span>
<span id="L533" rel="#L533">533</span>
<span id="L534" rel="#L534">534</span>
<span id="L535" rel="#L535">535</span>
<span id="L536" rel="#L536">536</span>
<span id="L537" rel="#L537">537</span>
<span id="L538" rel="#L538">538</span>
<span id="L539" rel="#L539">539</span>
<span id="L540" rel="#L540">540</span>
<span id="L541" rel="#L541">541</span>
<span id="L542" rel="#L542">542</span>
<span id="L543" rel="#L543">543</span>
<span id="L544" rel="#L544">544</span>
<span id="L545" rel="#L545">545</span>
<span id="L546" rel="#L546">546</span>
<span id="L547" rel="#L547">547</span>
<span id="L548" rel="#L548">548</span>
<span id="L549" rel="#L549">549</span>
<span id="L550" rel="#L550">550</span>
<span id="L551" rel="#L551">551</span>
<span id="L552" rel="#L552">552</span>
<span id="L553" rel="#L553">553</span>
<span id="L554" rel="#L554">554</span>
<span id="L555" rel="#L555">555</span>
<span id="L556" rel="#L556">556</span>
<span id="L557" rel="#L557">557</span>
<span id="L558" rel="#L558">558</span>
<span id="L559" rel="#L559">559</span>
<span id="L560" rel="#L560">560</span>
<span id="L561" rel="#L561">561</span>
<span id="L562" rel="#L562">562</span>
<span id="L563" rel="#L563">563</span>
<span id="L564" rel="#L564">564</span>
<span id="L565" rel="#L565">565</span>
<span id="L566" rel="#L566">566</span>
<span id="L567" rel="#L567">567</span>
<span id="L568" rel="#L568">568</span>
<span id="L569" rel="#L569">569</span>
<span id="L570" rel="#L570">570</span>
<span id="L571" rel="#L571">571</span>
<span id="L572" rel="#L572">572</span>
<span id="L573" rel="#L573">573</span>
<span id="L574" rel="#L574">574</span>
<span id="L575" rel="#L575">575</span>
<span id="L576" rel="#L576">576</span>
<span id="L577" rel="#L577">577</span>
<span id="L578" rel="#L578">578</span>
<span id="L579" rel="#L579">579</span>
<span id="L580" rel="#L580">580</span>
<span id="L581" rel="#L581">581</span>
<span id="L582" rel="#L582">582</span>
<span id="L583" rel="#L583">583</span>
<span id="L584" rel="#L584">584</span>
<span id="L585" rel="#L585">585</span>
<span id="L586" rel="#L586">586</span>
<span id="L587" rel="#L587">587</span>
<span id="L588" rel="#L588">588</span>
<span id="L589" rel="#L589">589</span>
<span id="L590" rel="#L590">590</span>
<span id="L591" rel="#L591">591</span>
<span id="L592" rel="#L592">592</span>
<span id="L593" rel="#L593">593</span>
<span id="L594" rel="#L594">594</span>
<span id="L595" rel="#L595">595</span>
<span id="L596" rel="#L596">596</span>
<span id="L597" rel="#L597">597</span>
<span id="L598" rel="#L598">598</span>
<span id="L599" rel="#L599">599</span>
<span id="L600" rel="#L600">600</span>
<span id="L601" rel="#L601">601</span>
<span id="L602" rel="#L602">602</span>
<span id="L603" rel="#L603">603</span>
<span id="L604" rel="#L604">604</span>
<span id="L605" rel="#L605">605</span>
<span id="L606" rel="#L606">606</span>
<span id="L607" rel="#L607">607</span>
<span id="L608" rel="#L608">608</span>
<span id="L609" rel="#L609">609</span>
<span id="L610" rel="#L610">610</span>
<span id="L611" rel="#L611">611</span>
<span id="L612" rel="#L612">612</span>
<span id="L613" rel="#L613">613</span>
<span id="L614" rel="#L614">614</span>
<span id="L615" rel="#L615">615</span>
<span id="L616" rel="#L616">616</span>
<span id="L617" rel="#L617">617</span>
<span id="L618" rel="#L618">618</span>
<span id="L619" rel="#L619">619</span>
<span id="L620" rel="#L620">620</span>
<span id="L621" rel="#L621">621</span>
<span id="L622" rel="#L622">622</span>
<span id="L623" rel="#L623">623</span>
<span id="L624" rel="#L624">624</span>
<span id="L625" rel="#L625">625</span>
<span id="L626" rel="#L626">626</span>
<span id="L627" rel="#L627">627</span>
<span id="L628" rel="#L628">628</span>
<span id="L629" rel="#L629">629</span>
<span id="L630" rel="#L630">630</span>
<span id="L631" rel="#L631">631</span>
<span id="L632" rel="#L632">632</span>
<span id="L633" rel="#L633">633</span>
<span id="L634" rel="#L634">634</span>
<span id="L635" rel="#L635">635</span>
<span id="L636" rel="#L636">636</span>
<span id="L637" rel="#L637">637</span>
<span id="L638" rel="#L638">638</span>
<span id="L639" rel="#L639">639</span>
<span id="L640" rel="#L640">640</span>
<span id="L641" rel="#L641">641</span>
<span id="L642" rel="#L642">642</span>
<span id="L643" rel="#L643">643</span>
<span id="L644" rel="#L644">644</span>
<span id="L645" rel="#L645">645</span>
<span id="L646" rel="#L646">646</span>
<span id="L647" rel="#L647">647</span>
<span id="L648" rel="#L648">648</span>
<span id="L649" rel="#L649">649</span>
<span id="L650" rel="#L650">650</span>
<span id="L651" rel="#L651">651</span>
<span id="L652" rel="#L652">652</span>
<span id="L653" rel="#L653">653</span>
<span id="L654" rel="#L654">654</span>
<span id="L655" rel="#L655">655</span>
<span id="L656" rel="#L656">656</span>
<span id="L657" rel="#L657">657</span>
<span id="L658" rel="#L658">658</span>
<span id="L659" rel="#L659">659</span>
<span id="L660" rel="#L660">660</span>
<span id="L661" rel="#L661">661</span>
<span id="L662" rel="#L662">662</span>
<span id="L663" rel="#L663">663</span>
<span id="L664" rel="#L664">664</span>
<span id="L665" rel="#L665">665</span>
<span id="L666" rel="#L666">666</span>
<span id="L667" rel="#L667">667</span>
<span id="L668" rel="#L668">668</span>
<span id="L669" rel="#L669">669</span>
<span id="L670" rel="#L670">670</span>
<span id="L671" rel="#L671">671</span>
<span id="L672" rel="#L672">672</span>
<span id="L673" rel="#L673">673</span>
<span id="L674" rel="#L674">674</span>
<span id="L675" rel="#L675">675</span>
<span id="L676" rel="#L676">676</span>
<span id="L677" rel="#L677">677</span>
<span id="L678" rel="#L678">678</span>
<span id="L679" rel="#L679">679</span>
<span id="L680" rel="#L680">680</span>
<span id="L681" rel="#L681">681</span>
<span id="L682" rel="#L682">682</span>
<span id="L683" rel="#L683">683</span>
<span id="L684" rel="#L684">684</span>
<span id="L685" rel="#L685">685</span>
<span id="L686" rel="#L686">686</span>
<span id="L687" rel="#L687">687</span>
<span id="L688" rel="#L688">688</span>
<span id="L689" rel="#L689">689</span>
<span id="L690" rel="#L690">690</span>
<span id="L691" rel="#L691">691</span>
<span id="L692" rel="#L692">692</span>
<span id="L693" rel="#L693">693</span>
<span id="L694" rel="#L694">694</span>
<span id="L695" rel="#L695">695</span>
<span id="L696" rel="#L696">696</span>
<span id="L697" rel="#L697">697</span>
<span id="L698" rel="#L698">698</span>
<span id="L699" rel="#L699">699</span>
<span id="L700" rel="#L700">700</span>
<span id="L701" rel="#L701">701</span>
<span id="L702" rel="#L702">702</span>
<span id="L703" rel="#L703">703</span>
<span id="L704" rel="#L704">704</span>
<span id="L705" rel="#L705">705</span>
<span id="L706" rel="#L706">706</span>
<span id="L707" rel="#L707">707</span>
<span id="L708" rel="#L708">708</span>
<span id="L709" rel="#L709">709</span>
<span id="L710" rel="#L710">710</span>
<span id="L711" rel="#L711">711</span>
<span id="L712" rel="#L712">712</span>
<span id="L713" rel="#L713">713</span>
<span id="L714" rel="#L714">714</span>
<span id="L715" rel="#L715">715</span>
<span id="L716" rel="#L716">716</span>
<span id="L717" rel="#L717">717</span>
<span id="L718" rel="#L718">718</span>
<span id="L719" rel="#L719">719</span>
<span id="L720" rel="#L720">720</span>
<span id="L721" rel="#L721">721</span>
<span id="L722" rel="#L722">722</span>
<span id="L723" rel="#L723">723</span>
<span id="L724" rel="#L724">724</span>
<span id="L725" rel="#L725">725</span>
<span id="L726" rel="#L726">726</span>
<span id="L727" rel="#L727">727</span>
<span id="L728" rel="#L728">728</span>
<span id="L729" rel="#L729">729</span>
<span id="L730" rel="#L730">730</span>
<span id="L731" rel="#L731">731</span>
<span id="L732" rel="#L732">732</span>
<span id="L733" rel="#L733">733</span>
<span id="L734" rel="#L734">734</span>
<span id="L735" rel="#L735">735</span>
<span id="L736" rel="#L736">736</span>
<span id="L737" rel="#L737">737</span>
<span id="L738" rel="#L738">738</span>
<span id="L739" rel="#L739">739</span>
<span id="L740" rel="#L740">740</span>
<span id="L741" rel="#L741">741</span>
<span id="L742" rel="#L742">742</span>
<span id="L743" rel="#L743">743</span>
<span id="L744" rel="#L744">744</span>
<span id="L745" rel="#L745">745</span>
<span id="L746" rel="#L746">746</span>
<span id="L747" rel="#L747">747</span>
<span id="L748" rel="#L748">748</span>
<span id="L749" rel="#L749">749</span>
<span id="L750" rel="#L750">750</span>
<span id="L751" rel="#L751">751</span>
<span id="L752" rel="#L752">752</span>
<span id="L753" rel="#L753">753</span>
<span id="L754" rel="#L754">754</span>
<span id="L755" rel="#L755">755</span>
<span id="L756" rel="#L756">756</span>
<span id="L757" rel="#L757">757</span>
<span id="L758" rel="#L758">758</span>
<span id="L759" rel="#L759">759</span>
<span id="L760" rel="#L760">760</span>
<span id="L761" rel="#L761">761</span>
<span id="L762" rel="#L762">762</span>
<span id="L763" rel="#L763">763</span>
<span id="L764" rel="#L764">764</span>
<span id="L765" rel="#L765">765</span>
<span id="L766" rel="#L766">766</span>
<span id="L767" rel="#L767">767</span>
<span id="L768" rel="#L768">768</span>
<span id="L769" rel="#L769">769</span>
<span id="L770" rel="#L770">770</span>
<span id="L771" rel="#L771">771</span>
<span id="L772" rel="#L772">772</span>
<span id="L773" rel="#L773">773</span>
<span id="L774" rel="#L774">774</span>
<span id="L775" rel="#L775">775</span>
<span id="L776" rel="#L776">776</span>
<span id="L777" rel="#L777">777</span>
<span id="L778" rel="#L778">778</span>
<span id="L779" rel="#L779">779</span>
<span id="L780" rel="#L780">780</span>
<span id="L781" rel="#L781">781</span>
<span id="L782" rel="#L782">782</span>
<span id="L783" rel="#L783">783</span>
<span id="L784" rel="#L784">784</span>
<span id="L785" rel="#L785">785</span>
<span id="L786" rel="#L786">786</span>
<span id="L787" rel="#L787">787</span>
<span id="L788" rel="#L788">788</span>
<span id="L789" rel="#L789">789</span>
<span id="L790" rel="#L790">790</span>
<span id="L791" rel="#L791">791</span>
<span id="L792" rel="#L792">792</span>
<span id="L793" rel="#L793">793</span>
<span id="L794" rel="#L794">794</span>
<span id="L795" rel="#L795">795</span>
<span id="L796" rel="#L796">796</span>
<span id="L797" rel="#L797">797</span>
<span id="L798" rel="#L798">798</span>
<span id="L799" rel="#L799">799</span>
<span id="L800" rel="#L800">800</span>
<span id="L801" rel="#L801">801</span>
<span id="L802" rel="#L802">802</span>
<span id="L803" rel="#L803">803</span>
<span id="L804" rel="#L804">804</span>
<span id="L805" rel="#L805">805</span>
<span id="L806" rel="#L806">806</span>
<span id="L807" rel="#L807">807</span>
<span id="L808" rel="#L808">808</span>
<span id="L809" rel="#L809">809</span>
<span id="L810" rel="#L810">810</span>
<span id="L811" rel="#L811">811</span>
<span id="L812" rel="#L812">812</span>
<span id="L813" rel="#L813">813</span>
<span id="L814" rel="#L814">814</span>
<span id="L815" rel="#L815">815</span>
<span id="L816" rel="#L816">816</span>
<span id="L817" rel="#L817">817</span>
<span id="L818" rel="#L818">818</span>
<span id="L819" rel="#L819">819</span>
<span id="L820" rel="#L820">820</span>
<span id="L821" rel="#L821">821</span>
<span id="L822" rel="#L822">822</span>
<span id="L823" rel="#L823">823</span>
<span id="L824" rel="#L824">824</span>
<span id="L825" rel="#L825">825</span>
<span id="L826" rel="#L826">826</span>
<span id="L827" rel="#L827">827</span>
<span id="L828" rel="#L828">828</span>
<span id="L829" rel="#L829">829</span>
<span id="L830" rel="#L830">830</span>
<span id="L831" rel="#L831">831</span>
<span id="L832" rel="#L832">832</span>
<span id="L833" rel="#L833">833</span>
<span id="L834" rel="#L834">834</span>
<span id="L835" rel="#L835">835</span>
<span id="L836" rel="#L836">836</span>
<span id="L837" rel="#L837">837</span>
<span id="L838" rel="#L838">838</span>
<span id="L839" rel="#L839">839</span>
<span id="L840" rel="#L840">840</span>
<span id="L841" rel="#L841">841</span>
<span id="L842" rel="#L842">842</span>
<span id="L843" rel="#L843">843</span>
<span id="L844" rel="#L844">844</span>
<span id="L845" rel="#L845">845</span>
<span id="L846" rel="#L846">846</span>
<span id="L847" rel="#L847">847</span>
<span id="L848" rel="#L848">848</span>
<span id="L849" rel="#L849">849</span>
<span id="L850" rel="#L850">850</span>
<span id="L851" rel="#L851">851</span>
<span id="L852" rel="#L852">852</span>
<span id="L853" rel="#L853">853</span>
<span id="L854" rel="#L854">854</span>
<span id="L855" rel="#L855">855</span>
<span id="L856" rel="#L856">856</span>
<span id="L857" rel="#L857">857</span>

            </td>
            <td class="blob-line-code">
                    <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">;;; haskell-mode.el --- A Haskell editing mode    -*- coding: utf-8 -*-</span></div><div class='line' id='LC2'><br/></div><div class='line' id='LC3'><span class="c1">;; Copyright (C) 2003, 2004, 2005, 2006, 2007, 2008  Free Software Foundation, Inc</span></div><div class='line' id='LC4'><span class="c1">;; Copyright (C) 1992, 1997-1998  Simon Marlow, Graeme E Moss, and Tommy Thorn</span></div><div class='line' id='LC5'><br/></div><div class='line' id='LC6'><span class="c1">;; Author:  1992      Simon Marlow</span></div><div class='line' id='LC7'><span class="c1">;;          1997-1998 Graeme E Moss &lt;gem@cs.york.ac.uk&gt; and</span></div><div class='line' id='LC8'><span class="c1">;;                    Tommy Thorn &lt;thorn@irisa.fr&gt;,</span></div><div class='line' id='LC9'><span class="c1">;;          2001-2002 Reuben Thomas (&gt;=v1.4)</span></div><div class='line' id='LC10'><span class="c1">;;          2003      Dave Love &lt;fx@gnu.org&gt;</span></div><div class='line' id='LC11'><span class="c1">;; Keywords: faces files Haskell</span></div><div class='line' id='LC12'><span class="c1">;; URL: https://github.com/haskell/haskell-mode</span></div><div class='line' id='LC13'><br/></div><div class='line' id='LC14'><span class="c1">;; This file is not part of GNU Emacs.</span></div><div class='line' id='LC15'><br/></div><div class='line' id='LC16'><span class="c1">;; This file is free software; you can redistribute it and/or modify</span></div><div class='line' id='LC17'><span class="c1">;; it under the terms of the GNU General Public License as published by</span></div><div class='line' id='LC18'><span class="c1">;; the Free Software Foundation; either version 3, or (at your option)</span></div><div class='line' id='LC19'><span class="c1">;; any later version.</span></div><div class='line' id='LC20'><br/></div><div class='line' id='LC21'><span class="c1">;; This file is distributed in the hope that it will be useful,</span></div><div class='line' id='LC22'><span class="c1">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span></div><div class='line' id='LC23'><span class="c1">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span></div><div class='line' id='LC24'><span class="c1">;; GNU General Public License for more details.</span></div><div class='line' id='LC25'><br/></div><div class='line' id='LC26'><span class="c1">;; You should have received a copy of the GNU General Public License</span></div><div class='line' id='LC27'><span class="c1">;; along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;.</span></div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'><span class="c1">;;; Commentary:</span></div><div class='line' id='LC30'><br/></div><div class='line' id='LC31'><span class="c1">;; A major mode for editing Haskell (the functional programming</span></div><div class='line' id='LC32'><span class="c1">;; language, see URL `http://www.haskell.org&#39;) in Emacs.</span></div><div class='line' id='LC33'><span class="c1">;;</span></div><div class='line' id='LC34'><span class="c1">;; Some of its major features include:</span></div><div class='line' id='LC35'><span class="c1">;;</span></div><div class='line' id='LC36'><span class="c1">;;  - syntax highlighting (font lock),</span></div><div class='line' id='LC37'><span class="c1">;;</span></div><div class='line' id='LC38'><span class="c1">;;  - automatic indentation,</span></div><div class='line' id='LC39'><span class="c1">;;</span></div><div class='line' id='LC40'><span class="c1">;;  - on-the-fly documentation,</span></div><div class='line' id='LC41'><span class="c1">;;</span></div><div class='line' id='LC42'><span class="c1">;;  - interaction with inferior GHCi/Hugs instance,</span></div><div class='line' id='LC43'><span class="c1">;;</span></div><div class='line' id='LC44'><span class="c1">;;  - scans declarations and places them in a menu.</span></div><div class='line' id='LC45'><span class="c1">;;</span></div><div class='line' id='LC46'><span class="c1">;; See URL `https://github.com/haskell/haskell-mode&#39; and/or</span></div><div class='line' id='LC47'><span class="c1">;; Info node `(haskell-mode)Introduction&#39; for more information.</span></div><div class='line' id='LC48'><span class="c1">;;</span></div><div class='line' id='LC49'><span class="c1">;; Use `M-x haskell-mode-view-news` (after Haskell Mode is installed)</span></div><div class='line' id='LC50'><span class="c1">;; to show information on recent changes in Haskell Mode.</span></div><div class='line' id='LC51'><br/></div><div class='line' id='LC52'><span class="c1">;;; Change Log:</span></div><div class='line' id='LC53'><br/></div><div class='line' id='LC54'><span class="c1">;; This mode is based on an editing mode by Simon Marlow 11/1/92</span></div><div class='line' id='LC55'><span class="c1">;; and heavily modified by Graeme E Moss and Tommy Thorn 7/11/98.</span></div><div class='line' id='LC56'><span class="c1">;;</span></div><div class='line' id='LC57'><span class="c1">;; Version 1.5:</span></div><div class='line' id='LC58'><span class="c1">;;   Added autoload for haskell-indentation</span></div><div class='line' id='LC59'><span class="c1">;;</span></div><div class='line' id='LC60'><span class="c1">;; Version 1.43:</span></div><div class='line' id='LC61'><span class="c1">;;   Various tweaks to doc strings and customization support from</span></div><div class='line' id='LC62'><span class="c1">;;   Ville Skyttä &lt;scop@xemacs.org&gt;.</span></div><div class='line' id='LC63'><span class="c1">;;</span></div><div class='line' id='LC64'><span class="c1">;; Version 1.42:</span></div><div class='line' id='LC65'><span class="c1">;;   Added autoload for GHCi inferior mode (thanks to Scott</span></div><div class='line' id='LC66'><span class="c1">;;   Williams for the bug report and fix).</span></div><div class='line' id='LC67'><span class="c1">;;</span></div><div class='line' id='LC68'><span class="c1">;; Version 1.41:</span></div><div class='line' id='LC69'><span class="c1">;;   Improved packaging, and made a couple more variables</span></div><div class='line' id='LC70'><span class="c1">;;   interactively settable.</span></div><div class='line' id='LC71'><span class="c1">;;</span></div><div class='line' id='LC72'><span class="c1">;; Version 1.4:</span></div><div class='line' id='LC73'><span class="c1">;;   Added GHCi mode from Chris Webb, and tidied up a little.</span></div><div class='line' id='LC74'><span class="c1">;;</span></div><div class='line' id='LC75'><span class="c1">;; Version 1.3:</span></div><div class='line' id='LC76'><span class="c1">;;   The literate or non-literate style of a buffer is now indicated</span></div><div class='line' id='LC77'><span class="c1">;;   by just the variable haskell-literate: nil, `bird&#39;, or `tex&#39;.</span></div><div class='line' id='LC78'><span class="c1">;;   For literate buffers with ambiguous style, the value of</span></div><div class='line' id='LC79'><span class="c1">;;   haskell-literate-default is used.</span></div><div class='line' id='LC80'><span class="c1">;;</span></div><div class='line' id='LC81'><span class="c1">;; Version 1.2:</span></div><div class='line' id='LC82'><span class="c1">;;   Separated off font locking, declaration scanning and simple</span></div><div class='line' id='LC83'><span class="c1">;;   indentation, and made them separate modules.  Modules can be</span></div><div class='line' id='LC84'><span class="c1">;;   added easily now.  Support for modules haskell-doc,</span></div><div class='line' id='LC85'><span class="c1">;;   haskell-indent, and haskell-hugs.  Literate and non-literate</span></div><div class='line' id='LC86'><span class="c1">;;   modes integrated into one mode, and literate buffer indicated by</span></div><div class='line' id='LC87'><span class="c1">;;   value of haskell-literate(-bird-style).</span></div><div class='line' id='LC88'><span class="c1">;;</span></div><div class='line' id='LC89'><span class="c1">;; Version 1.1:</span></div><div class='line' id='LC90'><span class="c1">;;   Added support for declaration scanning under XEmacs via</span></div><div class='line' id='LC91'><span class="c1">;;   func-menu.  Moved operators to level two fontification.</span></div><div class='line' id='LC92'><span class="c1">;;</span></div><div class='line' id='LC93'><span class="c1">;; Version 1.0:</span></div><div class='line' id='LC94'><span class="c1">;;   Added a nice indention support from Heribert Schuetz</span></div><div class='line' id='LC95'><span class="c1">;;   &lt;Heribert.Schuetz@informatik.uni-muenchen.de&gt;:</span></div><div class='line' id='LC96'><span class="c1">;;</span></div><div class='line' id='LC97'><span class="c1">;;     I have just hacked an Emacs Lisp function which you might prefer</span></div><div class='line' id='LC98'><span class="c1">;;     to `indent-relative&#39; in haskell-mode.el.  See below.  It is not</span></div><div class='line' id='LC99'><span class="c1">;;     really Haskell-specific because it does not take into account</span></div><div class='line' id='LC100'><span class="c1">;;     keywords like `do&#39;, `of&#39;, and `let&#39; (where the layout rule</span></div><div class='line' id='LC101'><span class="c1">;;     applies), but I already find it useful.</span></div><div class='line' id='LC102'><span class="c1">;;</span></div><div class='line' id='LC103'><span class="c1">;;   Cleaned up the imenu support.  Added support for literate scripts.</span></div><div class='line' id='LC104'><span class="c1">;;</span></div><div class='line' id='LC105'><span class="c1">;; Version 0.103 [HWL]:</span></div><div class='line' id='LC106'><span class="c1">;;   From Hans Wolfgang Loidl &lt;hwloidl@dcs.gla.ac.uk&gt;:</span></div><div class='line' id='LC107'><span class="c1">;;</span></div><div class='line' id='LC108'><span class="c1">;;   I (HWL) added imenu support by copying the appropriate functions</span></div><div class='line' id='LC109'><span class="c1">;;   from hugs-mode.  A menu-bar item &quot;Declarations&quot; is now added in</span></div><div class='line' id='LC110'><span class="c1">;;   haskell mode.  The new code, however, needs some clean-up.</span></div><div class='line' id='LC111'><span class="c1">;;</span></div><div class='line' id='LC112'><span class="c1">;; Version 0.102:</span></div><div class='line' id='LC113'><span class="c1">;;</span></div><div class='line' id='LC114'><span class="c1">;;   Moved C-c C-c key binding to comment-region.  Leave M-g M-g to do</span></div><div class='line' id='LC115'><span class="c1">;;   the work.  comment-start-skip is changed to comply with comment-start.</span></div><div class='line' id='LC116'><span class="c1">;;</span></div><div class='line' id='LC117'><span class="c1">;; Version 0.101:</span></div><div class='line' id='LC118'><span class="c1">;;</span></div><div class='line' id='LC119'><span class="c1">;;   Altered indent-line-function to indent-relative.</span></div><div class='line' id='LC120'><span class="c1">;;</span></div><div class='line' id='LC121'><span class="c1">;; Version 0.100:</span></div><div class='line' id='LC122'><span class="c1">;;</span></div><div class='line' id='LC123'><span class="c1">;;   First official release.</span></div><div class='line' id='LC124'><br/></div><div class='line' id='LC125'><span class="c1">;;; Code:</span></div><div class='line' id='LC126'><br/></div><div class='line' id='LC127'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;dabbrev</span><span class="p">)</span></div><div class='line' id='LC128'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;compile</span><span class="p">)</span></div><div class='line' id='LC129'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;flymake</span><span class="p">)</span></div><div class='line' id='LC130'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;outline</span><span class="p">)</span></div><div class='line' id='LC131'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;haskell-align-imports</span><span class="p">)</span></div><div class='line' id='LC132'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;haskell-sort-imports</span><span class="p">)</span></div><div class='line' id='LC133'><span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;haskell-string</span><span class="p">)</span></div><div class='line' id='LC134'><span class="p">(</span><span class="nf">with-no-warnings</span> <span class="p">(</span><span class="nf">require</span> <span class="ss">&#39;cl</span><span class="p">))</span></div><div class='line' id='LC135'><br/></div><div class='line' id='LC136'><span class="c1">;; FIXME: code-smell: too many forward decls for haskell-session are required here</span></div><div class='line' id='LC137'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">haskell-session</span><span class="p">)</span></div><div class='line' id='LC138'><span class="p">(</span><span class="nf">declare-function</span> <span class="nv">haskell-process-do-try-info</span> <span class="s">&quot;haskell-process&quot;</span> <span class="p">(</span><span class="nf">sym</span><span class="p">))</span></div><div class='line' id='LC139'><span class="p">(</span><span class="nf">declare-function</span> <span class="nv">haskell-process-generate-tags</span> <span class="s">&quot;haskell-process&quot;</span> <span class="p">(</span><span class="nf">&amp;optional</span> <span class="nv">and-then-find-this-tag</span><span class="p">))</span></div><div class='line' id='LC140'><span class="p">(</span><span class="nf">declare-function</span> <span class="nv">haskell-session</span> <span class="s">&quot;haskell-session&quot;</span> <span class="p">())</span></div><div class='line' id='LC141'><span class="p">(</span><span class="nf">declare-function</span> <span class="nv">haskell-session-all-modules</span> <span class="s">&quot;haskell-session&quot;</span> <span class="p">(</span><span class="nf">&amp;optional</span> <span class="nv">DONTCREATE</span><span class="p">))</span></div><div class='line' id='LC142'><span class="p">(</span><span class="nf">declare-function</span> <span class="nv">haskell-session-cabal-dir</span> <span class="s">&quot;haskell-session&quot;</span> <span class="p">(</span><span class="nf">session</span><span class="p">))</span></div><div class='line' id='LC143'><span class="p">(</span><span class="nf">declare-function</span> <span class="nv">haskell-session-maybe</span> <span class="s">&quot;haskell-session&quot;</span> <span class="p">())</span></div><div class='line' id='LC144'><span class="p">(</span><span class="nf">declare-function</span> <span class="nv">haskell-session-tags-filename</span> <span class="s">&quot;haskell-session&quot;</span> <span class="p">(</span><span class="nf">session</span><span class="p">))</span></div><div class='line' id='LC145'><span class="p">(</span><span class="nf">declare-function</span> <span class="nv">haskell-session-current-dir</span> <span class="s">&quot;haskell-session&quot;</span> <span class="p">(</span><span class="nf">session</span><span class="p">))</span></div><div class='line' id='LC146'><br/></div><div class='line' id='LC147'><span class="c1">;; All functions/variables start with `(literate-)haskell-&#39;.</span></div><div class='line' id='LC148'><br/></div><div class='line' id='LC149'><span class="c1">;; Version of mode.</span></div><div class='line' id='LC150'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">haskell-version</span> <span class="s">&quot;@VERSION@&quot;</span></div><div class='line' id='LC151'>&nbsp;&nbsp;<span class="s">&quot;The release version of `haskell-mode&#39;.&quot;</span><span class="p">)</span></div><div class='line' id='LC152'><br/></div><div class='line' id='LC153'><span class="p">(</span><span class="nf">defconst</span> <span class="nv">haskell-git-version</span> <span class="s">&quot;@GIT_VERSION@&quot;</span></div><div class='line' id='LC154'>&nbsp;&nbsp;<span class="s">&quot;The Git version of `haskell-mode&#39;.&quot;</span><span class="p">)</span></div><div class='line' id='LC155'><br/></div><div class='line' id='LC156'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">haskell-mode-pkg-base-dir</span> <span class="p">(</span><span class="nf">file-name-directory</span> <span class="nv">load-file-name</span><span class="p">)</span></div><div class='line' id='LC157'>&nbsp;&nbsp;<span class="s">&quot;Package base directory of installed `haskell-mode&#39;.</span></div><div class='line' id='LC158'><span class="s">Used for locating additional package data files.&quot;</span><span class="p">)</span></div><div class='line' id='LC159'><br/></div><div class='line' id='LC160'><span class="c1">;;;###autoload</span></div><div class='line' id='LC161'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-version</span> <span class="p">(</span><span class="nf">&amp;optional</span> <span class="nv">here</span><span class="p">)</span></div><div class='line' id='LC162'>&nbsp;&nbsp;<span class="s">&quot;Show the `haskell-mode` version in the echo area.</span></div><div class='line' id='LC163'><span class="s">With prefix argument HERE, insert it at point.</span></div><div class='line' id='LC164'><span class="s">When FULL is non-nil, use a verbose version string.</span></div><div class='line' id='LC165'><span class="s">When MESSAGE is non-nil, display a message with the version.&quot;</span></div><div class='line' id='LC166'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span> <span class="s">&quot;P&quot;</span><span class="p">)</span></div><div class='line' id='LC167'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">haskell-mode-dir</span> <span class="p">(</span><span class="nf">ignore-errors</span></div><div class='line' id='LC168'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">file-name-directory</span> <span class="p">(</span><span class="k">or </span><span class="p">(</span><span class="nf">locate-library</span> <span class="s">&quot;haskell-mode&quot;</span><span class="p">)</span> <span class="s">&quot;&quot;</span><span class="p">))))</span></div><div class='line' id='LC169'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">_version</span> <span class="p">(</span><span class="nf">format</span> <span class="s">&quot;haskell-mode version %s (%s @ %s)&quot;</span></div><div class='line' id='LC170'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">haskell-version</span></div><div class='line' id='LC171'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">haskell-git-version</span></div><div class='line' id='LC172'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">haskell-mode-dir</span><span class="p">)))</span></div><div class='line' id='LC173'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">here</span></div><div class='line' id='LC174'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">insert</span> <span class="nv">_version</span><span class="p">)</span></div><div class='line' id='LC175'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">message</span> <span class="s">&quot;%s&quot;</span> <span class="nv">_version</span><span class="p">))))</span></div><div class='line' id='LC176'><br/></div><div class='line' id='LC177'><span class="c1">;;;###autoload</span></div><div class='line' id='LC178'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-mode-view-news</span> <span class="p">()</span></div><div class='line' id='LC179'>&nbsp;&nbsp;<span class="s">&quot;Display information on recent changes to haskell-mode.&quot;</span></div><div class='line' id='LC180'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC181'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-current-buffer</span> <span class="p">(</span><span class="nf">find-file-read-only</span> <span class="p">(</span><span class="nf">expand-file-name</span> <span class="s">&quot;NEWS&quot;</span> <span class="nv">haskell-mode-pkg-base-dir</span><span class="p">))</span></div><div class='line' id='LC182'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">point-min</span><span class="p">))</span></div><div class='line' id='LC183'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">hide-sublevels</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC184'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">outline-next-visible-heading</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC185'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">show-subtree</span><span class="p">)))</span></div><div class='line' id='LC186'><br/></div><div class='line' id='LC187'><span class="p">(</span><span class="nf">defgroup</span> <span class="nv">haskell</span> <span class="nv">nil</span></div><div class='line' id='LC188'>&nbsp;&nbsp;<span class="s">&quot;Major mode for editing Haskell programs.&quot;</span></div><div class='line' id='LC189'>&nbsp;&nbsp;<span class="nv">:link</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">custom-manual</span> <span class="s">&quot;(haskell-mode)&quot;</span><span class="p">)</span></div><div class='line' id='LC190'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;languages</span></div><div class='line' id='LC191'>&nbsp;&nbsp;<span class="nv">:prefix</span> <span class="s">&quot;haskell-&quot;</span><span class="p">)</span></div><div class='line' id='LC192'><br/></div><div class='line' id='LC193'><span class="c1">;;;###autoload</span></div><div class='line' id='LC194'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-customize</span> <span class="p">()</span></div><div class='line' id='LC195'>&nbsp;&nbsp;<span class="s">&quot;Browse the haskell customize sub-tree.</span></div><div class='line' id='LC196'><span class="s">This calls &#39;customize-browse&#39; with haskell as argument and makes</span></div><div class='line' id='LC197'><span class="s">sure all haskell customize definitions have been loaded.&quot;</span></div><div class='line' id='LC198'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC199'>&nbsp;&nbsp;<span class="c1">;; make sure all modules with (defcustom ...)s are loaded</span></div><div class='line' id='LC200'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">mapc</span> <span class="ss">&#39;require</span></div><div class='line' id='LC201'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="nv">haskell-checkers</span> <span class="nv">haskell-doc</span> <span class="nv">haskell-font-lock</span> <span class="nv">haskell-indentation</span> <span class="nv">haskell-indent</span> <span class="nv">haskell-interactive-mode</span> <span class="nv">haskell-menu</span> <span class="nv">haskell-process</span> <span class="nv">haskell-yas</span> <span class="nv">inf-haskell</span><span class="p">))</span></div><div class='line' id='LC202'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">customize-browse</span> <span class="ss">&#39;haskell</span><span class="p">))</span></div><div class='line' id='LC203'><br/></div><div class='line' id='LC204'><span class="c1">;; Are we looking at a literate script?</span></div><div class='line' id='LC205'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">haskell-literate</span> <span class="nv">nil</span></div><div class='line' id='LC206'>&nbsp;&nbsp;<span class="s">&quot;*If not nil, the current buffer contains a literate Haskell script.</span></div><div class='line' id='LC207'><span class="s">Possible values are: `bird&#39; and `tex&#39;, for Bird-style and LaTeX-style</span></div><div class='line' id='LC208'><span class="s">literate scripts respectively.  Set by `haskell-mode&#39; and</span></div><div class='line' id='LC209'><span class="s">`literate-haskell-mode&#39;.  For an ambiguous literate buffer -- i.e. does</span></div><div class='line' id='LC210'><span class="s">not contain either \&quot;\\begin{code}\&quot; or \&quot;\\end{code}\&quot; on a line on</span></div><div class='line' id='LC211'><span class="s">its own, nor does it contain \&quot;&gt;\&quot; at the start of a line -- the value</span></div><div class='line' id='LC212'><span class="s">of `haskell-literate-default&#39; is used.&quot;</span><span class="p">)</span></div><div class='line' id='LC213'><span class="p">(</span><span class="nf">make-variable-buffer-local</span> <span class="ss">&#39;haskell-literate</span><span class="p">)</span></div><div class='line' id='LC214'><span class="p">(</span><span class="nf">put</span> <span class="ss">&#39;haskell-literate</span> <span class="ss">&#39;safe-local-variable</span> <span class="ss">&#39;symbolp</span><span class="p">)</span></div><div class='line' id='LC215'><span class="c1">;; Default literate style for ambiguous literate buffers.</span></div><div class='line' id='LC216'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">haskell-literate-default</span> <span class="ss">&#39;bird</span></div><div class='line' id='LC217'>&nbsp;&nbsp;<span class="s">&quot;Default value for `haskell-literate&#39;.</span></div><div class='line' id='LC218'><span class="s">Used if the style of a literate buffer is ambiguous.  This variable should</span></div><div class='line' id='LC219'><span class="s">be set to the preferred literate style.&quot;</span></div><div class='line' id='LC220'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;haskell</span></div><div class='line' id='LC221'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">choice</span> <span class="p">(</span><span class="nf">const</span> <span class="nv">bird</span><span class="p">)</span> <span class="p">(</span><span class="nf">const</span> <span class="nv">tex</span><span class="p">)</span> <span class="p">(</span><span class="nf">const</span> <span class="nv">nil</span><span class="p">)))</span></div><div class='line' id='LC222'><br/></div><div class='line' id='LC223'><span class="c1">;;;###autoload</span></div><div class='line' id='LC224'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">haskell-mode-map</span></div><div class='line' id='LC225'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nb">map </span><span class="p">(</span><span class="nf">make-sparse-keymap</span><span class="p">)))</span></div><div class='line' id='LC226'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span></div><div class='line' id='LC227'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; For inferior haskell mode, use the below bindings</span></div><div class='line' id='LC228'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; (define-key map [?\M-C-x]     &#39;inferior-haskell-send-defun)</span></div><div class='line' id='LC229'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; (define-key map [?\C-x ?\C-e] &#39;inferior-haskell-send-last-sexp)</span></div><div class='line' id='LC230'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; (define-key map [?\C-c ?\C-r] &#39;inferior-haskell-send-region)</span></div><div class='line' id='LC231'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">[</span><span class="nv">?</span><span class="err">\</span><span class="nv">C-x</span> <span class="nv">?</span><span class="err">\</span><span class="nv">C-d</span><span class="p">]</span> <span class="ss">&#39;inferior-haskell-send-decl</span><span class="p">)</span></div><div class='line' id='LC232'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">[</span><span class="nv">?</span><span class="err">\</span><span class="nv">C-c</span> <span class="nv">?</span><span class="err">\</span><span class="nv">C-z</span><span class="p">]</span> <span class="ss">&#39;switch-to-haskell</span><span class="p">)</span></div><div class='line' id='LC233'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">[</span><span class="nv">?</span><span class="err">\</span><span class="nv">C-c</span> <span class="nv">?</span><span class="err">\</span><span class="nv">C-l</span><span class="p">]</span> <span class="ss">&#39;inferior-haskell-load-file</span><span class="p">)</span></div><div class='line' id='LC234'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; I think it makes sense to bind inferior-haskell-load-and-run to C-c</span></div><div class='line' id='LC235'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; C-r, but since it used to be bound to `reload&#39; until June 2007, I&#39;m</span></div><div class='line' id='LC236'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; going to leave it out for now.</span></div><div class='line' id='LC237'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; (define-key map [?\C-c ?\C-r] &#39;inferior-haskell-load-and-run)</span></div><div class='line' id='LC238'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">[</span><span class="nv">?</span><span class="err">\</span><span class="nv">C-c</span> <span class="nv">?</span><span class="err">\</span><span class="nv">C-b</span><span class="p">]</span> <span class="ss">&#39;switch-to-haskell</span><span class="p">)</span></div><div class='line' id='LC239'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; (define-key map [?\C-c ?\C-s] &#39;inferior-haskell-start-process)</span></div><div class='line' id='LC240'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; That&#39;s what M-; is for.</span></div><div class='line' id='LC241'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; (define-key map &quot;\C-c\C-c&quot; &#39;comment-region)</span></div><div class='line' id='LC242'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">(</span><span class="nf">kbd</span> <span class="s">&quot;C-c C-t&quot;</span><span class="p">)</span> <span class="ss">&#39;inferior-haskell-type</span><span class="p">)</span></div><div class='line' id='LC243'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">(</span><span class="nf">kbd</span> <span class="s">&quot;C-c C-i&quot;</span><span class="p">)</span> <span class="ss">&#39;inferior-haskell-info</span><span class="p">)</span></div><div class='line' id='LC244'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">(</span><span class="nf">kbd</span> <span class="s">&quot;C-c M-.&quot;</span><span class="p">)</span> <span class="ss">&#39;inferior-haskell-find-definition</span><span class="p">)</span></div><div class='line' id='LC245'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">(</span><span class="nf">kbd</span> <span class="s">&quot;C-c C-d&quot;</span><span class="p">)</span> <span class="ss">&#39;inferior-haskell-find-haddock</span><span class="p">)</span></div><div class='line' id='LC246'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">[</span><span class="nv">?</span><span class="err">\</span><span class="nv">C-c</span> <span class="nv">?</span><span class="err">\</span><span class="nv">C-v</span><span class="p">]</span> <span class="ss">&#39;haskell-check</span><span class="p">)</span></div><div class='line' id='LC247'><br/></div><div class='line' id='LC248'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span></div><div class='line' id='LC249'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Editing-specific commands</span></div><div class='line' id='LC250'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">(</span><span class="nf">kbd</span> <span class="s">&quot;C-c C-.&quot;</span><span class="p">)</span> <span class="ss">&#39;haskell-mode-format-imports</span><span class="p">)</span></div><div class='line' id='LC251'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">define-key</span> <span class="nv">map</span> <span class="p">[</span><span class="nv">remap</span> <span class="nv">delete-indentation</span><span class="p">]</span> <span class="ss">&#39;haskell-delete-indentation</span><span class="p">)</span></div><div class='line' id='LC252'><br/></div><div class='line' id='LC253'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">map</span><span class="p">)</span></div><div class='line' id='LC254'>&nbsp;&nbsp;<span class="s">&quot;Keymap used in Haskell mode.&quot;</span><span class="p">)</span></div><div class='line' id='LC255'><br/></div><div class='line' id='LC256'><span class="p">(</span><span class="nf">easy-menu-define</span> <span class="nv">haskell-mode-menu</span> <span class="nv">haskell-mode-map</span></div><div class='line' id='LC257'>&nbsp;&nbsp;<span class="s">&quot;Menu for the Haskell major mode.&quot;</span></div><div class='line' id='LC258'>&nbsp;&nbsp;<span class="c1">;; Suggestions from Pupeno &lt;pupeno@pupeno.com&gt;:</span></div><div class='line' id='LC259'>&nbsp;&nbsp;<span class="c1">;; - choose the underlying interpreter</span></div><div class='line' id='LC260'>&nbsp;&nbsp;<span class="c1">;; - look up docs</span></div><div class='line' id='LC261'>&nbsp;&nbsp;<span class="o">`</span><span class="p">(</span><span class="s">&quot;Haskell&quot;</span></div><div class='line' id='LC262'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="s">&quot;Indent line&quot;</span> <span class="nv">indent-according-to-mode</span><span class="p">]</span></div><div class='line' id='LC263'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="s">&quot;Indent region&quot;</span> <span class="nv">indent-region</span> <span class="nv">mark-active</span><span class="p">]</span></div><div class='line' id='LC264'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="s">&quot;(Un)Comment region&quot;</span> <span class="nv">comment-region</span> <span class="nv">mark-active</span><span class="p">]</span></div><div class='line' id='LC265'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;---&quot;</span></div><div class='line' id='LC266'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="s">&quot;Start interpreter&quot;</span> <span class="nv">switch-to-haskell</span><span class="p">]</span></div><div class='line' id='LC267'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="s">&quot;Load file&quot;</span> <span class="nv">inferior-haskell-load-file</span><span class="p">]</span></div><div class='line' id='LC268'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;---&quot;</span></div><div class='line' id='LC269'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="s">&quot;Load tidy core&quot;</span> <span class="nv">ghc-core-create-core</span><span class="p">]</span></div><div class='line' id='LC270'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;---&quot;</span></div><div class='line' id='LC271'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">,</span><span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">default-boundp</span> <span class="ss">&#39;eldoc-documentation-function</span><span class="p">)</span></div><div class='line' id='LC272'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="s">&quot;Doc mode&quot;</span> <span class="nv">eldoc-mode</span></div><div class='line' id='LC273'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:style</span> <span class="nv">toggle</span> <span class="nv">:selected</span> <span class="p">(</span><span class="nf">bound-and-true-p</span> <span class="nv">eldoc-mode</span><span class="p">)]</span></div><div class='line' id='LC274'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="s">&quot;Doc mode&quot;</span> <span class="nv">haskell-doc-mode</span></div><div class='line' id='LC275'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">:style</span> <span class="nv">toggle</span> <span class="nv">:selected</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">boundp</span> <span class="ss">&#39;haskell-doc-mode</span><span class="p">)</span> <span class="nv">haskell-doc-mode</span><span class="p">)])</span></div><div class='line' id='LC276'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">[</span><span class="s">&quot;Customize&quot;</span> <span class="p">(</span><span class="nf">customize-group</span> <span class="ss">&#39;haskell</span><span class="p">)]</span></div><div class='line' id='LC277'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">))</span></div><div class='line' id='LC278'><br/></div><div class='line' id='LC279'><span class="c1">;; Syntax table.</span></div><div class='line' id='LC280'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">haskell-mode-syntax-table</span></div><div class='line' id='LC281'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">table</span> <span class="p">(</span><span class="nf">make-syntax-table</span><span class="p">)))</span></div><div class='line' id='LC282'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span>  <span class="s">&quot; &quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC283'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="nv">t</span> <span class="s">&quot; &quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC284'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="s">&quot; &quot;</span><span class="err">\</span><span class="s">&quot;&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC285'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="o">&#39;</span> <span class="s">&quot;\&#39;&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC286'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?_</span>  <span class="s">&quot;w&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC287'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="p">(</span> <span class="s">&quot;()&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC288'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="p">)</span> <span class="s">&quot;)(&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC289'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="p">[</span>  <span class="s">&quot;(]&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC290'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="p">]</span>  <span class="s">&quot;)[&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC291'><br/></div><div class='line' id='LC292'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">cond </span><span class="p">((</span><span class="nf">featurep</span> <span class="ss">&#39;xemacs</span><span class="p">)</span></div><div class='line' id='LC293'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; I don&#39;t know whether this is equivalent to the below</span></div><div class='line' id='LC294'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; (modulo nesting).  -- fx</span></div><div class='line' id='LC295'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">{</span>  <span class="s">&quot;(}5&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC296'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">}</span>  <span class="s">&quot;){8&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC297'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?-</span>  <span class="s">&quot;_ 1267&quot;</span> <span class="nv">table</span><span class="p">))</span></div><div class='line' id='LC298'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span></div><div class='line' id='LC299'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; In Emacs 21, the `n&#39; indicates that they nest.</span></div><div class='line' id='LC300'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; The `b&#39; annotation is actually ignored because it&#39;s only</span></div><div class='line' id='LC301'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; meaningful on the second char of a comment-starter, so</span></div><div class='line' id='LC302'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; on Emacs 20 and before we get wrong results.  --Stef</span></div><div class='line' id='LC303'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\{</span>  <span class="s">&quot;(}1nb&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC304'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\}</span>  <span class="s">&quot;){4nb&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC305'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?-</span>  <span class="s">&quot;_ 123&quot;</span> <span class="nv">table</span><span class="p">)))</span></div><div class='line' id='LC306'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="nv">n</span> <span class="s">&quot;&gt;&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC307'><br/></div><div class='line' id='LC308'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">(</span><span class="nf">i</span> <span class="nv">lim</span><span class="p">)</span></div><div class='line' id='LC309'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">map-char-table</span></div><div class='line' id='LC310'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">k</span> <span class="nv">v</span><span class="p">)</span></div><div class='line' id='LC311'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nf">equal</span> <span class="nv">v</span> <span class="o">&#39;</span><span class="p">(</span><span class="mi">1</span><span class="p">))</span></div><div class='line' id='LC312'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; The current Emacs 22 codebase can pass either a char</span></div><div class='line' id='LC313'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; or a char range.</span></div><div class='line' id='LC314'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">consp</span> <span class="nv">k</span><span class="p">)</span></div><div class='line' id='LC315'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">i</span> <span class="p">(</span><span class="nb">car </span><span class="nv">k</span><span class="p">)</span></div><div class='line' id='LC316'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">lim</span> <span class="p">(</span><span class="nb">cdr </span><span class="nv">k</span><span class="p">))</span></div><div class='line' id='LC317'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">i</span> <span class="nv">k</span></div><div class='line' id='LC318'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">lim</span> <span class="nv">k</span><span class="p">))</span></div><div class='line' id='LC319'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="nb">&lt;= </span><span class="nv">i</span> <span class="nv">lim</span><span class="p">)</span></div><div class='line' id='LC320'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nb">&gt; </span><span class="nv">i</span> <span class="mi">127</span><span class="p">)</span></div><div class='line' id='LC321'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">i</span> <span class="s">&quot;_&quot;</span> <span class="nv">table</span><span class="p">))</span></div><div class='line' id='LC322'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">i</span> <span class="p">(</span><span class="mi">1</span><span class="nv">+</span> <span class="nv">i</span><span class="p">)))))</span></div><div class='line' id='LC323'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">standard-syntax-table</span><span class="p">)))</span></div><div class='line' id='LC324'><br/></div><div class='line' id='LC325'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\</span><span class="o">`</span> <span class="s">&quot;$`&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC326'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">?</span><span class="err">\\</span> <span class="s">&quot;\\&quot;</span> <span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC327'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">mapc</span> <span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">x</span><span class="p">)</span></div><div class='line' id='LC328'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">x</span> <span class="s">&quot;_&quot;</span> <span class="nv">table</span><span class="p">))</span></div><div class='line' id='LC329'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Some of these are actually OK by default.</span></div><div class='line' id='LC330'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;!#$%&amp;*+./:&lt;=&gt;?@^|~&quot;</span><span class="p">)</span></div><div class='line' id='LC331'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">unless</span> <span class="p">(</span><span class="nf">featurep</span> <span class="ss">&#39;mule</span><span class="p">)</span></div><div class='line' id='LC332'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Non-ASCII syntax should be OK, at least in Emacs.</span></div><div class='line' id='LC333'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">mapc</span> <span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">x</span><span class="p">)</span></div><div class='line' id='LC334'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">x</span> <span class="s">&quot;_&quot;</span> <span class="nv">table</span><span class="p">))</span></div><div class='line' id='LC335'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">concat</span> <span class="s">&quot;¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿&quot;</span></div><div class='line' id='LC336'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;×÷&quot;</span><span class="p">))</span></div><div class='line' id='LC337'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">mapc</span> <span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">x</span><span class="p">)</span></div><div class='line' id='LC338'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">modify-syntax-entry</span> <span class="nv">x</span> <span class="s">&quot;w&quot;</span> <span class="nv">table</span><span class="p">))</span></div><div class='line' id='LC339'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">concat</span> <span class="s">&quot;ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ&quot;</span></div><div class='line' id='LC340'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;ØÙÚÛÜÝÞß&quot;</span></div><div class='line' id='LC341'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;àáâãäåæçèéêëìíîïðñòóôõö&quot;</span></div><div class='line' id='LC342'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;øùúûüýþÿ&quot;</span><span class="p">)))</span></div><div class='line' id='LC343'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">table</span><span class="p">)</span></div><div class='line' id='LC344'>&nbsp;&nbsp;<span class="s">&quot;Syntax table used in Haskell mode.&quot;</span><span class="p">)</span></div><div class='line' id='LC345'><br/></div><div class='line' id='LC346'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-ident-at-point</span> <span class="p">()</span></div><div class='line' id='LC347'>&nbsp;&nbsp;<span class="s">&quot;Return the identifier under point, or nil if none found.</span></div><div class='line' id='LC348'><span class="s">May return a qualified name.&quot;</span></div><div class='line' id='LC349'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC350'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Skip whitespace if we&#39;re on it.  That way, if we&#39;re at &quot;map &quot;, we&#39;ll</span></div><div class='line' id='LC351'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; see the word &quot;map&quot;.</span></div><div class='line' id='LC352'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">eobp</span><span class="p">))</span></div><div class='line' id='LC353'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">eq</span> <span class="nv">?</span>  <span class="p">(</span><span class="nf">char-syntax</span> <span class="p">(</span><span class="nf">char-after</span><span class="p">))))</span></div><div class='line' id='LC354'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">skip-chars-backward</span> <span class="s">&quot; \t&quot;</span><span class="p">))</span></div><div class='line' id='LC355'><br/></div><div class='line' id='LC356'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">case-fold-search</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC357'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">multiple-value-bind</span> <span class="p">(</span><span class="nf">start</span> <span class="nv">end</span><span class="p">)</span></div><div class='line' id='LC358'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;\\s_&quot;</span><span class="p">)</span></div><div class='line' id='LC359'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">progn</span> <span class="p">(</span><span class="nf">skip-syntax-backward</span> <span class="s">&quot;_&quot;</span><span class="p">)</span> <span class="p">(</span><span class="nf">point</span><span class="p">))</span></div><div class='line' id='LC360'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span> <span class="p">(</span><span class="nf">skip-syntax-forward</span> <span class="s">&quot;_&quot;</span><span class="p">)</span> <span class="p">(</span><span class="nf">point</span><span class="p">)))</span></div><div class='line' id='LC361'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">list</span></div><div class='line' id='LC362'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span> <span class="p">(</span><span class="nf">skip-syntax-backward</span> <span class="s">&quot;w&#39;&quot;</span><span class="p">)</span></div><div class='line' id='LC363'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">skip-syntax-forward</span> <span class="s">&quot;&#39;&quot;</span><span class="p">)</span> <span class="p">(</span><span class="nf">point</span><span class="p">))</span></div><div class='line' id='LC364'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span> <span class="p">(</span><span class="nf">skip-syntax-forward</span> <span class="s">&quot;w&#39;&quot;</span><span class="p">)</span> <span class="p">(</span><span class="nf">point</span><span class="p">))))</span></div><div class='line' id='LC365'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; If we&#39;re looking at a module ID that qualifies further IDs, add</span></div><div class='line' id='LC366'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; those IDs.</span></div><div class='line' id='LC367'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="nv">start</span><span class="p">)</span></div><div class='line' id='LC368'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;[[:upper:]]&quot;</span><span class="p">)</span> <span class="p">(</span><span class="nf">eq</span> <span class="p">(</span><span class="nf">char-after</span> <span class="nv">end</span><span class="p">)</span> <span class="nv">?</span><span class="o">.</span><span class="p">)</span></div><div class='line' id='LC369'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; It&#39;s a module ID that qualifies further IDs.</span></div><div class='line' id='LC370'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="mi">1</span><span class="nv">+</span> <span class="nv">end</span><span class="p">))</span></div><div class='line' id='LC371'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC372'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">zerop</span> <span class="p">(</span><span class="nf">skip-syntax-forward</span></div><div class='line' id='LC373'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;\\s_&quot;</span><span class="p">)</span> <span class="s">&quot;_&quot;</span> <span class="s">&quot;w&#39;&quot;</span><span class="p">))))</span></div><div class='line' id='LC374'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">end</span> <span class="p">(</span><span class="nf">point</span><span class="p">))))))</span></div><div class='line' id='LC375'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; If we&#39;re looking at an ID that&#39;s itself qualified by previous</span></div><div class='line' id='LC376'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; module IDs, add those too.</span></div><div class='line' id='LC377'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="nv">start</span><span class="p">)</span></div><div class='line' id='LC378'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">eq</span> <span class="p">(</span><span class="nf">char-after</span><span class="p">)</span> <span class="nv">?</span><span class="o">.</span><span class="p">)</span> <span class="p">(</span><span class="nf">forward-char</span> <span class="mi">1</span><span class="p">))</span> <span class="c1">;Special case for &quot;.&quot;</span></div><div class='line' id='LC379'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">eq</span> <span class="p">(</span><span class="nf">char-before</span><span class="p">)</span> <span class="nv">?</span><span class="o">.</span><span class="p">)</span></div><div class='line' id='LC380'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">progn</span> <span class="p">(</span><span class="nf">forward-char</span> <span class="mi">-1</span><span class="p">)</span></div><div class='line' id='LC381'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">zerop</span> <span class="p">(</span><span class="nf">skip-syntax-backward</span> <span class="s">&quot;w&#39;&quot;</span><span class="p">))))</span></div><div class='line' id='LC382'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">skip-syntax-forward</span> <span class="s">&quot;&#39;&quot;</span><span class="p">)</span></div><div class='line' id='LC383'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;[[:upper:]]&quot;</span><span class="p">))</span></div><div class='line' id='LC384'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">start</span> <span class="p">(</span><span class="nf">point</span><span class="p">)))</span></div><div class='line' id='LC385'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; This is it.</span></div><div class='line' id='LC386'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">buffer-substring-no-properties</span> <span class="nv">start</span> <span class="nv">end</span><span class="p">)))))</span></div><div class='line' id='LC387'><br/></div><div class='line' id='LC388'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-delete-indentation</span> <span class="p">(</span><span class="nf">&amp;optional</span> <span class="nv">arg</span><span class="p">)</span></div><div class='line' id='LC389'>&nbsp;&nbsp;<span class="s">&quot;Like `delete-indentation&#39; but ignoring Bird-style \&quot;&gt;\&quot;.&quot;</span></div><div class='line' id='LC390'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span> <span class="s">&quot;*P&quot;</span><span class="p">)</span></div><div class='line' id='LC391'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">fill-prefix</span> <span class="p">(</span><span class="k">or </span><span class="nv">fill-prefix</span> <span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">eq</span> <span class="nv">haskell-literate</span> <span class="ss">&#39;bird</span><span class="p">)</span> <span class="s">&quot;&gt;&quot;</span><span class="p">))))</span></div><div class='line' id='LC392'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">delete-indentation</span> <span class="nv">arg</span><span class="p">)))</span></div><div class='line' id='LC393'><br/></div><div class='line' id='LC394'><span class="c1">;; Various mode variables.</span></div><div class='line' id='LC395'><br/></div><div class='line' id='LC396'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">haskell-mode-hook</span> <span class="nv">nil</span></div><div class='line' id='LC397'>&nbsp;&nbsp;<span class="s">&quot;Hook run after entering `haskell-mode&#39;.</span></div><div class='line' id='LC398'><br/></div><div class='line' id='LC399'><span class="s">Some of the supported modules that can be activated via this hook:</span></div><div class='line' id='LC400'><br/></div><div class='line' id='LC401'><span class="s">   `haskell-decl-scan&#39;, Graeme E Moss</span></div><div class='line' id='LC402'><span class="s">     Scans top-level declarations, and places them in a menu.</span></div><div class='line' id='LC403'><br/></div><div class='line' id='LC404'><span class="s">   `haskell-doc&#39;, Hans-Wolfgang Loidl</span></div><div class='line' id='LC405'><span class="s">     Echoes types of functions or syntax of keywords when the cursor is idle.</span></div><div class='line' id='LC406'><br/></div><div class='line' id='LC407'><span class="s">   `haskell-indentation&#39;, Kristof Bastiaensen</span></div><div class='line' id='LC408'><span class="s">     Intelligent semi-automatic indentation Mk2</span></div><div class='line' id='LC409'><br/></div><div class='line' id='LC410'><span class="s">   `haskell-indent&#39;, Guy Lapalme</span></div><div class='line' id='LC411'><span class="s">     Intelligent semi-automatic indentation.</span></div><div class='line' id='LC412'><br/></div><div class='line' id='LC413'><span class="s">   `haskell-simple-indent&#39;, Graeme E Moss and Heribert Schuetz</span></div><div class='line' id='LC414'><span class="s">     Simple indentation.</span></div><div class='line' id='LC415'><br/></div><div class='line' id='LC416'><span class="s">Module X is activated using the command `turn-on-X&#39;.  For example,</span></div><div class='line' id='LC417'><span class="s">`haskell-doc&#39; is activated using `turn-on-haskell-doc&#39;.</span></div><div class='line' id='LC418'><span class="s">For more information on a specific module, see the help for its `X-mode&#39;</span></div><div class='line' id='LC419'><span class="s">function.  Some modules can be deactivated using `turn-off-X&#39;.</span></div><div class='line' id='LC420'><br/></div><div class='line' id='LC421'><span class="s">See Info node `(haskell-mode)haskell-mode-hook&#39; for more details.</span></div><div class='line' id='LC422'><br/></div><div class='line' id='LC423'><span class="s">Warning: do not enable more than one of the three indentation</span></div><div class='line' id='LC424'><span class="s">modes. See Info node `(haskell-mode)indentation&#39; for more</span></div><div class='line' id='LC425'><span class="s">details.&quot;</span></div><div class='line' id='LC426'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;hook</span></div><div class='line' id='LC427'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;haskell</span></div><div class='line' id='LC428'>&nbsp;&nbsp;<span class="nv">:link</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">info-link</span> <span class="s">&quot;(haskell-mode)haskell-mode-hook&quot;</span><span class="p">)</span></div><div class='line' id='LC429'>&nbsp;&nbsp;<span class="nv">:link</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">function-link</span> <span class="nv">haskell-mode</span><span class="p">)</span></div><div class='line' id='LC430'>&nbsp;&nbsp;<span class="nv">:options</span> <span class="o">`</span><span class="p">(</span><span class="nf">capitalized-words-mode</span></div><div class='line' id='LC431'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">imenu-add-menubar-index</span></div><div class='line' id='LC432'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">turn-on-eldoc-mode</span></div><div class='line' id='LC433'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">turn-on-haskell-decl-scan</span></div><div class='line' id='LC434'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">turn-on-haskell-doc</span></div><div class='line' id='LC435'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">turn-on-haskell-indent</span></div><div class='line' id='LC436'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">turn-on-haskell-indentation</span></div><div class='line' id='LC437'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">turn-on-haskell-simple-indent</span></div><div class='line' id='LC438'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">turn-on-haskell-unicode-input-method</span><span class="p">))</span></div><div class='line' id='LC439'><br/></div><div class='line' id='LC440'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">eldoc-print-current-symbol-info-function</span><span class="p">)</span></div><div class='line' id='LC441'><br/></div><div class='line' id='LC442'><span class="c1">;; For compatibility with Emacs &lt; 24, derive conditionally</span></div><div class='line' id='LC443'><span class="p">(</span><span class="nf">defalias</span> <span class="ss">&#39;haskell-parent-mode</span></div><div class='line' id='LC444'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">fboundp</span> <span class="ss">&#39;prog-mode</span><span class="p">)</span> <span class="ss">&#39;prog-mode</span> <span class="ss">&#39;fundamental-mode</span><span class="p">))</span></div><div class='line' id='LC445'><br/></div><div class='line' id='LC446'><span class="c1">;; The main mode functions</span></div><div class='line' id='LC447'><span class="c1">;;;###autoload</span></div><div class='line' id='LC448'><span class="p">(</span><span class="nf">define-derived-mode</span> <span class="nv">haskell-mode</span> <span class="nv">haskell-parent-mode</span> <span class="s">&quot;Haskell&quot;</span></div><div class='line' id='LC449'>&nbsp;&nbsp;<span class="s">&quot;Major mode for editing Haskell programs.</span></div><div class='line' id='LC450'><br/></div><div class='line' id='LC451'><span class="s">See also Info node `(haskell-mode)Getting Started&#39; for more</span></div><div class='line' id='LC452'><span class="s">information about this mode.</span></div><div class='line' id='LC453'><br/></div><div class='line' id='LC454'><span class="s">\\&lt;haskell-mode-map&gt;</span></div><div class='line' id='LC455'><span class="s">Literate scripts are supported via `literate-haskell-mode&#39;.</span></div><div class='line' id='LC456'><span class="s">The variable `haskell-literate&#39; indicates the style of the script in the</span></div><div class='line' id='LC457'><span class="s">current buffer.  See the documentation on this variable for more details.</span></div><div class='line' id='LC458'><br/></div><div class='line' id='LC459'><span class="s">Use `haskell-version&#39; to find out what version of Haskell mode you are</span></div><div class='line' id='LC460'><span class="s">currently using.</span></div><div class='line' id='LC461'><br/></div><div class='line' id='LC462'><span class="s">Additional Haskell mode modules can be hooked in via `haskell-mode-hook&#39;;</span></div><div class='line' id='LC463'><span class="s">see documentation for that variable for more details.&quot;</span></div><div class='line' id='LC464'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;haskell</span></div><div class='line' id='LC465'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;paragraph-start</span><span class="p">)</span> <span class="p">(</span><span class="nf">concat</span> <span class="s">&quot;^$\\|&quot;</span> <span class="nv">page-delimiter</span><span class="p">))</span></div><div class='line' id='LC466'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;paragraph-separate</span><span class="p">)</span> <span class="nv">paragraph-start</span><span class="p">)</span></div><div class='line' id='LC467'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;fill-paragraph-function</span><span class="p">)</span> <span class="ss">&#39;haskell-fill-paragraph</span><span class="p">)</span></div><div class='line' id='LC468'>&nbsp;&nbsp;<span class="c1">;; (set (make-local-variable &#39;adaptive-fill-function) &#39;haskell-adaptive-fill)</span></div><div class='line' id='LC469'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;adaptive-fill-mode</span><span class="p">)</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC470'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;comment-start</span><span class="p">)</span> <span class="s">&quot;-- &quot;</span><span class="p">)</span></div><div class='line' id='LC471'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;comment-padding</span><span class="p">)</span> <span class="mi">0</span><span class="p">)</span></div><div class='line' id='LC472'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;comment-start-skip</span><span class="p">)</span> <span class="s">&quot;[-{]-[ \t]*&quot;</span><span class="p">)</span></div><div class='line' id='LC473'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;comment-end</span><span class="p">)</span> <span class="s">&quot;&quot;</span><span class="p">)</span></div><div class='line' id='LC474'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;comment-end-skip</span><span class="p">)</span> <span class="s">&quot;[ \t]*\\(-}\\|\\s&gt;\\)&quot;</span><span class="p">)</span></div><div class='line' id='LC475'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;parse-sexp-ignore-comments</span><span class="p">)</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC476'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;indent-line-function</span><span class="p">)</span> <span class="ss">&#39;haskell-mode-suggest-indent-choice</span><span class="p">)</span></div><div class='line' id='LC477'>&nbsp;&nbsp;<span class="c1">;; Set things up for eldoc-mode.</span></div><div class='line' id='LC478'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;eldoc-documentation-function</span><span class="p">)</span></div><div class='line' id='LC479'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">&#39;haskell-doc-current-info</span><span class="p">)</span></div><div class='line' id='LC480'>&nbsp;&nbsp;<span class="c1">;; Set things up for imenu.</span></div><div class='line' id='LC481'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;imenu-create-index-function</span><span class="p">)</span></div><div class='line' id='LC482'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">&#39;haskell-ds-create-imenu-index</span><span class="p">)</span></div><div class='line' id='LC483'>&nbsp;&nbsp;<span class="c1">;; Set things up for font-lock.</span></div><div class='line' id='LC484'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;font-lock-defaults</span><span class="p">)</span></div><div class='line' id='LC485'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="nv">haskell-font-lock-choose-keywords</span></div><div class='line' id='LC486'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">nil</span> <span class="nv">nil</span> <span class="p">((</span><span class="nf">?</span><span class="err">\</span><span class="o">&#39;</span> <span class="o">.</span> <span class="s">&quot;w&quot;</span><span class="p">)</span> <span class="p">(</span><span class="nf">?_</span>  <span class="o">.</span> <span class="s">&quot;w&quot;</span><span class="p">))</span> <span class="nv">nil</span></div><div class='line' id='LC487'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">font-lock-syntactic-keywords</span></div><div class='line' id='LC488'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">.</span> <span class="nv">haskell-font-lock-choose-syntactic-keywords</span><span class="p">)</span></div><div class='line' id='LC489'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">font-lock-syntactic-face-function</span></div><div class='line' id='LC490'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">.</span> <span class="nv">haskell-syntactic-face-function</span><span class="p">)</span></div><div class='line' id='LC491'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Get help from font-lock-syntactic-keywords.</span></div><div class='line' id='LC492'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">parse-sexp-lookup-properties</span> <span class="o">.</span> <span class="nv">t</span><span class="p">)))</span></div><div class='line' id='LC493'>&nbsp;&nbsp;<span class="c1">;; Haskell&#39;s layout rules mean that TABs have to be handled with extra care.</span></div><div class='line' id='LC494'>&nbsp;&nbsp;<span class="c1">;; The safer option is to avoid TABs.  The second best is to make sure</span></div><div class='line' id='LC495'>&nbsp;&nbsp;<span class="c1">;; TABs stops are 8 chars apart, as mandated by the Haskell Report.  --Stef</span></div><div class='line' id='LC496'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;indent-tabs-mode</span><span class="p">)</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC497'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;tab-width</span><span class="p">)</span> <span class="mi">8</span><span class="p">)</span></div><div class='line' id='LC498'>&nbsp;&nbsp;<span class="c1">;; dynamic abbrev support: recognize Haskell identifiers</span></div><div class='line' id='LC499'>&nbsp;&nbsp;<span class="c1">;; Haskell is case-sensitive language</span></div><div class='line' id='LC500'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;dabbrev-case-fold-search</span><span class="p">)</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC501'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;dabbrev-case-distinction</span><span class="p">)</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC502'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;dabbrev-case-replace</span><span class="p">)</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC503'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;dabbrev-abbrev-char-regexp</span><span class="p">)</span> <span class="s">&quot;\\sw\\|[.]&quot;</span><span class="p">)</span></div><div class='line' id='LC504'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">haskell-literate</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC505'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">add-hook</span> <span class="ss">&#39;before-save-hook</span> <span class="ss">&#39;haskell-mode-before-save-handler</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC506'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">add-hook</span> <span class="ss">&#39;after-save-hook</span> <span class="ss">&#39;haskell-mode-after-save-handler</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC507'>&nbsp;&nbsp;<span class="p">)</span></div><div class='line' id='LC508'><br/></div><div class='line' id='LC509'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-fill-paragraph</span> <span class="p">(</span><span class="nf">justify</span><span class="p">)</span></div><div class='line' id='LC510'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC511'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; Fill paragraph should only work in comments.</span></div><div class='line' id='LC512'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; The -- comments are handled properly by default</span></div><div class='line' id='LC513'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; The {- -} comments need some extra love.</span></div><div class='line' id='LC514'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">syntax-values</span> <span class="p">(</span><span class="nf">syntax-ppss</span><span class="p">))</span></div><div class='line' id='LC515'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">comment-num</span> <span class="p">(</span><span class="nf">nth</span> <span class="mi">4</span> <span class="nv">syntax-values</span><span class="p">)))</span></div><div class='line' id='LC516'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">cond</span></div><div class='line' id='LC517'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">eq</span> <span class="nv">t</span> <span class="nv">comment-num</span><span class="p">)</span></div><div class='line' id='LC518'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; standard fill works wonders inside a non-nested comment</span></div><div class='line' id='LC519'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">fill-comment-paragraph</span> <span class="nv">justify</span><span class="p">))</span></div><div class='line' id='LC520'><br/></div><div class='line' id='LC521'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">integerp</span> <span class="nv">comment-num</span><span class="p">)</span></div><div class='line' id='LC522'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; we are in a nested comment. lets narrow to comment content</span></div><div class='line' id='LC523'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; and use plain paragraph fill for that</span></div><div class='line' id='LC524'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">comment-start-point</span> <span class="p">(</span><span class="nf">nth</span> <span class="mi">8</span> <span class="nv">syntax-values</span><span class="p">))</span></div><div class='line' id='LC525'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">comment-end-point</span></div><div class='line' id='LC526'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC527'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">re-search-forward</span> <span class="s">&quot;-}&quot;</span> <span class="p">(</span><span class="nf">point-max</span><span class="p">)</span> <span class="nv">t</span> <span class="nv">comment-num</span><span class="p">)</span></div><div class='line' id='LC528'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">point</span><span class="p">)))</span></div><div class='line' id='LC529'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">fill-paragraph-handle-comment</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC530'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-restriction</span></div><div class='line' id='LC531'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">narrow-to-region</span> <span class="p">(</span><span class="nb">+ </span><span class="mi">2</span> <span class="nv">comment-start-point</span><span class="p">)</span> <span class="p">(</span><span class="nb">- </span><span class="nv">comment-end-point</span> <span class="mi">2</span><span class="p">))</span></div><div class='line' id='LC532'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">fill-paragraph</span> <span class="nv">justify</span><span class="p">))))</span></div><div class='line' id='LC533'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">eolp</span><span class="p">)</span></div><div class='line' id='LC534'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; do nothing outside of a comment</span></div><div class='line' id='LC535'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC536'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span></div><div class='line' id='LC537'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; go to end of line and try again</span></div><div class='line' id='LC538'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">end-of-line</span><span class="p">)</span></div><div class='line' id='LC539'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">haskell-fill-paragraph</span> <span class="nv">justify</span><span class="p">))))))</span></div><div class='line' id='LC540'><br/></div><div class='line' id='LC541'><br/></div><div class='line' id='LC542'><span class="c1">;; (defun haskell-adaptive-fill ()</span></div><div class='line' id='LC543'><span class="c1">;;   ;; We want to use &quot;--  &quot; as the prefix of &quot;-- |&quot;, etc.</span></div><div class='line' id='LC544'><span class="c1">;;   (let* ((line-end (save-excursion (end-of-line) (point)))</span></div><div class='line' id='LC545'><span class="c1">;;          (line-start (point)))</span></div><div class='line' id='LC546'><span class="c1">;;     (save-excursion</span></div><div class='line' id='LC547'><span class="c1">;;       (unless (in-comment)</span></div><div class='line' id='LC548'><span class="c1">;;         ;; Try to find the start of a comment. We only fill comments.</span></div><div class='line' id='LC549'><span class="c1">;;         (search-forward-regexp comment-start-skip line-end t))</span></div><div class='line' id='LC550'><span class="c1">;;       (when (in-comment)</span></div><div class='line' id='LC551'><span class="c1">;;         (let ();(prefix-start (point)))</span></div><div class='line' id='LC552'><span class="c1">;;           (skip-syntax-forward &quot;^w&quot;)</span></div><div class='line' id='LC553'><span class="c1">;;           (make-string (- (point) line-start) ?\s))))))</span></div><div class='line' id='LC554'><br/></div><div class='line' id='LC555'><br/></div><div class='line' id='LC556'><br/></div><div class='line' id='LC557'><span class="c1">;;;###autoload</span></div><div class='line' id='LC558'><span class="p">(</span><span class="nf">define-derived-mode</span> <span class="nv">literate-haskell-mode</span> <span class="nv">haskell-mode</span> <span class="s">&quot;LitHaskell&quot;</span></div><div class='line' id='LC559'>&nbsp;&nbsp;<span class="s">&quot;As `haskell-mode&#39; but for literate scripts.&quot;</span></div><div class='line' id='LC560'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">haskell-literate</span></div><div class='line' id='LC561'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC562'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">point-min</span><span class="p">))</span></div><div class='line' id='LC563'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">cond</span></div><div class='line' id='LC564'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">re-search-forward</span> <span class="s">&quot;^\\\\\\(begin\\|end\\){code}$&quot;</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">)</span> <span class="ss">&#39;tex</span><span class="p">)</span></div><div class='line' id='LC565'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nf">re-search-forward</span> <span class="s">&quot;^&gt;&quot;</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">)</span> <span class="ss">&#39;bird</span><span class="p">)</span></div><div class='line' id='LC566'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="nv">haskell-literate-default</span><span class="p">))))</span></div><div class='line' id='LC567'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">eq</span> <span class="nv">haskell-literate</span> <span class="ss">&#39;bird</span><span class="p">)</span></div><div class='line' id='LC568'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; fill-comment-paragraph isn&#39;t much use there, and even gets confused</span></div><div class='line' id='LC569'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; by the syntax-table text-properties we add to mark the first char</span></div><div class='line' id='LC570'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; of each line as a comment-starter.</span></div><div class='line' id='LC571'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;fill-paragraph-handle-comment</span><span class="p">)</span> <span class="nv">nil</span><span class="p">))</span></div><div class='line' id='LC572'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set</span> <span class="p">(</span><span class="nf">make-local-variable</span> <span class="ss">&#39;mode-line-process</span><span class="p">)</span></div><div class='line' id='LC573'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;/&quot;</span> <span class="p">(</span><span class="nf">:eval</span> <span class="p">(</span><span class="nf">symbol-name</span> <span class="nv">haskell-literate</span><span class="p">)))))</span></div><div class='line' id='LC574'><br/></div><div class='line' id='LC575'><span class="c1">;;;###autoload(add-to-list &#39;auto-mode-alist        &#39;(&quot;\\.\\(?:[gh]s\\|hi\\)\\&#39;&quot; . haskell-mode))</span></div><div class='line' id='LC576'><span class="c1">;;;###autoload(add-to-list &#39;auto-mode-alist        &#39;(&quot;\\.l[gh]s\\&#39;&quot; . literate-haskell-mode))</span></div><div class='line' id='LC577'><span class="c1">;;;###autoload(add-to-list &#39;interpreter-mode-alist &#39;(&quot;runghc&quot; . haskell-mode))</span></div><div class='line' id='LC578'><span class="c1">;;;###autoload(add-to-list &#39;interpreter-mode-alist &#39;(&quot;runhaskell&quot; . haskell-mode))</span></div><div class='line' id='LC579'><br/></div><div class='line' id='LC580'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">haskell-hoogle-command</span></div><div class='line' id='LC581'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">executable-find</span> <span class="s">&quot;hoogle&quot;</span><span class="p">)</span> <span class="s">&quot;hoogle&quot;</span><span class="p">)</span></div><div class='line' id='LC582'>&nbsp;&nbsp;<span class="s">&quot;Name of the command to use to query Hoogle.</span></div><div class='line' id='LC583'><span class="s">If nil, use the Hoogle web-site.&quot;</span></div><div class='line' id='LC584'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;haskell</span></div><div class='line' id='LC585'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">choice</span> <span class="p">(</span><span class="nf">const</span> <span class="nv">:tag</span> <span class="s">&quot;Use Web-site&quot;</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC586'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">string</span><span class="p">))</span></div><div class='line' id='LC587'><br/></div><div class='line' id='LC588'><span class="c1">;;;###autoload</span></div><div class='line' id='LC589'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-hoogle</span> <span class="p">(</span><span class="nf">query</span><span class="p">)</span></div><div class='line' id='LC590'>&nbsp;&nbsp;<span class="s">&quot;Do a Hoogle search for QUERY.&quot;</span></div><div class='line' id='LC591'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span></div><div class='line' id='LC592'>&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">def</span> <span class="p">(</span><span class="nf">haskell-ident-at-point</span><span class="p">)))</span></div><div class='line' id='LC593'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="nv">def</span> <span class="p">(</span><span class="nf">symbolp</span> <span class="nv">def</span><span class="p">))</span> <span class="p">(</span><span class="nf">setq</span> <span class="nv">def</span> <span class="p">(</span><span class="nf">symbol-name</span> <span class="nv">def</span><span class="p">)))</span></div><div class='line' id='LC594'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">read-string</span> <span class="p">(</span><span class="k">if </span><span class="nv">def</span></div><div class='line' id='LC595'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">format</span> <span class="s">&quot;Hoogle query (default %s): &quot;</span> <span class="nv">def</span><span class="p">)</span></div><div class='line' id='LC596'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;Hoogle query: &quot;</span><span class="p">)</span></div><div class='line' id='LC597'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">nil</span> <span class="nv">nil</span> <span class="nv">def</span><span class="p">))))</span></div><div class='line' id='LC598'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">null</span> <span class="nv">haskell-hoogle-command</span><span class="p">)</span></div><div class='line' id='LC599'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">browse-url</span> <span class="p">(</span><span class="nf">format</span> <span class="s">&quot;http://haskell.org/hoogle/?q=%s&quot;</span> <span class="nv">query</span><span class="p">))</span></div><div class='line' id='LC600'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">lexical-let</span> <span class="p">((</span><span class="nf">temp-buffer</span> <span class="p">(</span><span class="nf">help-buffer</span><span class="p">)))</span></div><div class='line' id='LC601'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-output-to-temp-buffer</span> <span class="nv">temp-buffer</span></div><div class='line' id='LC602'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-current-buffer</span> <span class="nv">standard-output</span></div><div class='line' id='LC603'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">hoogle-process</span></div><div class='line' id='LC604'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">start-process</span> <span class="s">&quot;hoogle&quot;</span> <span class="p">(</span><span class="nf">current-buffer</span><span class="p">)</span> <span class="nv">haskell-hoogle-command</span> <span class="nv">query</span><span class="p">))</span></div><div class='line' id='LC605'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">scroll-to-top</span></div><div class='line' id='LC606'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">process</span> <span class="nv">event</span><span class="p">)</span></div><div class='line' id='LC607'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-window-start</span> <span class="p">(</span><span class="nf">get-buffer-window</span> <span class="nv">temp-buffer</span> <span class="nv">t</span><span class="p">)</span> <span class="mi">1</span><span class="p">))))</span></div><div class='line' id='LC608'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-process-sentinel</span> <span class="nv">hoogle-process</span> <span class="nv">scroll-to-top</span><span class="p">)))))))</span></div><div class='line' id='LC609'><br/></div><div class='line' id='LC610'><span class="c1">;;;###autoload</span></div><div class='line' id='LC611'><span class="p">(</span><span class="nf">defalias</span> <span class="ss">&#39;hoogle</span> <span class="ss">&#39;haskell-hoogle</span><span class="p">)</span></div><div class='line' id='LC612'><br/></div><div class='line' id='LC613'><span class="c1">;;;###autoload</span></div><div class='line' id='LC614'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-hayoo</span> <span class="p">(</span><span class="nf">query</span><span class="p">)</span></div><div class='line' id='LC615'>&nbsp;&nbsp;<span class="s">&quot;Do a Hayoo search for QUERY.&quot;</span></div><div class='line' id='LC616'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span></div><div class='line' id='LC617'>&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">def</span> <span class="p">(</span><span class="nf">haskell-ident-at-point</span><span class="p">)))</span></div><div class='line' id='LC618'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="nv">def</span> <span class="p">(</span><span class="nf">symbolp</span> <span class="nv">def</span><span class="p">))</span> <span class="p">(</span><span class="nf">setq</span> <span class="nv">def</span> <span class="p">(</span><span class="nf">symbol-name</span> <span class="nv">def</span><span class="p">)))</span></div><div class='line' id='LC619'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">read-string</span> <span class="p">(</span><span class="k">if </span><span class="nv">def</span></div><div class='line' id='LC620'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">format</span> <span class="s">&quot;Hayoo query (default %s): &quot;</span> <span class="nv">def</span><span class="p">)</span></div><div class='line' id='LC621'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;Hayoo query: &quot;</span><span class="p">)</span></div><div class='line' id='LC622'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">nil</span> <span class="nv">nil</span> <span class="nv">def</span><span class="p">))))</span></div><div class='line' id='LC623'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">browse-url</span> <span class="p">(</span><span class="nf">format</span> <span class="s">&quot;http://holumbus.fh-wedel.de/hayoo/hayoo.html?query=%s&quot;</span> <span class="nv">query</span><span class="p">)))</span></div><div class='line' id='LC624'><br/></div><div class='line' id='LC625'><span class="c1">;;;###autoload</span></div><div class='line' id='LC626'><span class="p">(</span><span class="nf">defalias</span> <span class="ss">&#39;hayoo</span> <span class="ss">&#39;haskell-hayoo</span><span class="p">)</span></div><div class='line' id='LC627'><br/></div><div class='line' id='LC628'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">haskell-check-command</span> <span class="s">&quot;hlint&quot;</span></div><div class='line' id='LC629'>&nbsp;&nbsp;<span class="s">&quot;*Command used to check a Haskell file.&quot;</span></div><div class='line' id='LC630'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;haskell</span></div><div class='line' id='LC631'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="o">&#39;</span><span class="p">(</span><span class="nv">choice</span> <span class="p">(</span><span class="nf">const</span> <span class="s">&quot;hlint&quot;</span><span class="p">)</span></div><div class='line' id='LC632'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">const</span> <span class="s">&quot;ghc -fno-code&quot;</span><span class="p">)</span></div><div class='line' id='LC633'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">string </span><span class="nv">:tag</span> <span class="s">&quot;Other command&quot;</span><span class="p">)))</span></div><div class='line' id='LC634'><br/></div><div class='line' id='LC635'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">haskell-stylish-on-save</span> <span class="nv">nil</span></div><div class='line' id='LC636'>&nbsp;&nbsp;<span class="s">&quot;Whether to run stylish-haskell on the buffer before saving.&quot;</span></div><div class='line' id='LC637'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;haskell</span></div><div class='line' id='LC638'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;boolean</span><span class="p">)</span></div><div class='line' id='LC639'><br/></div><div class='line' id='LC640'><span class="p">(</span><span class="nf">defcustom</span> <span class="nv">haskell-tags-on-save</span> <span class="nv">nil</span></div><div class='line' id='LC641'>&nbsp;&nbsp;<span class="s">&quot;Generate tags via hasktags after saving.&quot;</span></div><div class='line' id='LC642'>&nbsp;&nbsp;<span class="nv">:group</span> <span class="ss">&#39;haskell</span></div><div class='line' id='LC643'>&nbsp;&nbsp;<span class="nv">:type</span> <span class="ss">&#39;boolean</span><span class="p">)</span></div><div class='line' id='LC644'><br/></div><div class='line' id='LC645'><span class="p">(</span><span class="nf">defvar</span> <span class="nv">haskell-saved-check-command</span> <span class="nv">nil</span></div><div class='line' id='LC646'>&nbsp;&nbsp;<span class="s">&quot;Internal use.&quot;</span><span class="p">)</span></div><div class='line' id='LC647'><br/></div><div class='line' id='LC648'><span class="c1">;; Like Python.  Should be abstracted, sigh.</span></div><div class='line' id='LC649'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-check</span> <span class="p">(</span><span class="nf">command</span><span class="p">)</span></div><div class='line' id='LC650'>&nbsp;&nbsp;<span class="s">&quot;Check a Haskell file (default current buffer&#39;s file).</span></div><div class='line' id='LC651'><span class="s">Runs COMMAND, a shell command, as if by `compile&#39;.</span></div><div class='line' id='LC652'><span class="s">See `haskell-check-command&#39; for the default.&quot;</span></div><div class='line' id='LC653'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span></div><div class='line' id='LC654'>&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">read-string</span> <span class="s">&quot;Checker command: &quot;</span></div><div class='line' id='LC655'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">or </span><span class="nv">haskell-saved-check-command</span></div><div class='line' id='LC656'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">concat</span> <span class="nv">haskell-check-command</span> <span class="s">&quot; &quot;</span></div><div class='line' id='LC657'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">name</span> <span class="p">(</span><span class="nf">buffer-file-name</span><span class="p">)))</span></div><div class='line' id='LC658'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="nv">name</span></div><div class='line' id='LC659'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">file-name-nondirectory</span> <span class="nv">name</span><span class="p">))))))))</span></div><div class='line' id='LC660'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">haskell-saved-check-command</span> <span class="nv">command</span><span class="p">)</span></div><div class='line' id='LC661'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-some-buffers</span> <span class="p">(</span><span class="nb">not </span><span class="nv">compilation-ask-about-save</span><span class="p">)</span> <span class="nv">nil</span><span class="p">)</span></div><div class='line' id='LC662'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">compilation-start</span> <span class="nv">command</span><span class="p">))</span></div><div class='line' id='LC663'><br/></div><div class='line' id='LC664'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-flymake-init</span> <span class="p">()</span></div><div class='line' id='LC665'>&nbsp;&nbsp;<span class="s">&quot;Flymake init function for Haskell.</span></div><div class='line' id='LC666'><span class="s">To be added to `flymake-init-create-temp-buffer-copy&#39;.&quot;</span></div><div class='line' id='LC667'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">checker-elts</span> <span class="p">(</span><span class="k">and </span><span class="nv">haskell-saved-check-command</span></div><div class='line' id='LC668'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">split-string</span> <span class="nv">haskell-saved-check-command</span><span class="p">))))</span></div><div class='line' id='LC669'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nb">car </span><span class="nv">checker-elts</span><span class="p">)</span></div><div class='line' id='LC670'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">append </span><span class="p">(</span><span class="nb">cdr </span><span class="nv">checker-elts</span><span class="p">)</span></div><div class='line' id='LC671'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">flymake-init-create-temp-buffer-copy</span></div><div class='line' id='LC672'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="ss">&#39;flymake-create-temp-inplace</span><span class="p">))))))</span></div><div class='line' id='LC673'><br/></div><div class='line' id='LC674'><span class="p">(</span><span class="nf">add-to-list</span> <span class="ss">&#39;flymake-allowed-file-name-masks</span> <span class="o">&#39;</span><span class="p">(</span><span class="s">&quot;\\.l?hs\\&#39;&quot;</span> <span class="nv">haskell-flymake-init</span><span class="p">))</span></div><div class='line' id='LC675'><br/></div><div class='line' id='LC676'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-mode-suggest-indent-choice</span> <span class="p">()</span></div><div class='line' id='LC677'>&nbsp;&nbsp;<span class="s">&quot;Ran when the user tries to indent in the buffer but no indentation mode has been selected.</span></div><div class='line' id='LC678'><span class="s">Brings up the documentation for haskell-mode-hook.&quot;</span></div><div class='line' id='LC679'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">describe-variable</span> <span class="ss">&#39;haskell-mode-hook</span><span class="p">))</span></div><div class='line' id='LC680'><br/></div><div class='line' id='LC681'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-mode-format-imports</span> <span class="p">()</span></div><div class='line' id='LC682'>&nbsp;&nbsp;<span class="s">&quot;Format the imports by aligning and sorting them.&quot;</span></div><div class='line' id='LC683'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC684'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">col</span> <span class="p">(</span><span class="nf">current-column</span><span class="p">)))</span></div><div class='line' id='LC685'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">haskell-sort-imports</span><span class="p">)</span></div><div class='line' id='LC686'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">haskell-align-imports</span><span class="p">)</span></div><div class='line' id='LC687'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nb">+ </span><span class="p">(</span><span class="nf">line-beginning-position</span><span class="p">)</span></div><div class='line' id='LC688'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">col</span><span class="p">))))</span></div><div class='line' id='LC689'><br/></div><div class='line' id='LC690'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-mode-message-line</span> <span class="p">(</span><span class="nf">str</span><span class="p">)</span></div><div class='line' id='LC691'>&nbsp;&nbsp;<span class="s">&quot;Message only one line, multiple lines just disturbs the programmer.&quot;</span></div><div class='line' id='LC692'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">lines</span> <span class="p">(</span><span class="nf">split-string</span> <span class="nv">str</span> <span class="s">&quot;\n&quot;</span> <span class="nv">t</span><span class="p">)))</span></div><div class='line' id='LC693'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nb">car </span><span class="nv">lines</span><span class="p">)</span> <span class="p">(</span><span class="nf">stringp</span> <span class="p">(</span><span class="nb">car </span><span class="nv">lines</span><span class="p">)))</span></div><div class='line' id='LC694'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">message</span> <span class="s">&quot;%s&quot;</span></div><div class='line' id='LC695'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">concat</span> <span class="p">(</span><span class="nb">car </span><span class="nv">lines</span><span class="p">)</span></div><div class='line' id='LC696'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nb">cdr </span><span class="nv">lines</span><span class="p">)</span> <span class="p">(</span><span class="nf">stringp</span> <span class="p">(</span><span class="nb">cadr </span><span class="nv">lines</span><span class="p">)))</span></div><div class='line' id='LC697'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">format</span> <span class="s">&quot; [ %s .. ]&quot;</span> <span class="p">(</span><span class="nf">haskell-string-take</span> <span class="p">(</span><span class="nf">haskell-trim</span> <span class="p">(</span><span class="nb">cadr </span><span class="nv">lines</span><span class="p">))</span> <span class="mi">10</span><span class="p">))</span></div><div class='line' id='LC698'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;&quot;</span><span class="p">))))))</span></div><div class='line' id='LC699'><br/></div><div class='line' id='LC700'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-mode-contextual-space</span> <span class="p">()</span></div><div class='line' id='LC701'>&nbsp;&nbsp;<span class="s">&quot;Contextually do clever stuff when hitting space.&quot;</span></div><div class='line' id='LC702'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC703'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">haskell-session-maybe</span><span class="p">))</span></div><div class='line' id='LC704'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">self-insert-command</span> <span class="mi">1</span><span class="p">)</span></div><div class='line' id='LC705'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">cond </span><span class="p">((</span><span class="nf">save-excursion</span> <span class="p">(</span><span class="nf">forward-word</span> <span class="mi">-1</span><span class="p">)</span></div><div class='line' id='LC706'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;^import$&quot;</span><span class="p">))</span></div><div class='line' id='LC707'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">insert</span> <span class="s">&quot; &quot;</span><span class="p">)</span></div><div class='line' id='LC708'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">module</span> <span class="p">(</span><span class="nf">ido-completing-read</span> <span class="s">&quot;Module: &quot;</span> <span class="p">(</span><span class="nf">haskell-session-all-modules</span><span class="p">))))</span></div><div class='line' id='LC709'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">insert</span> <span class="nv">module</span><span class="p">)</span></div><div class='line' id='LC710'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">haskell-mode-format-imports</span><span class="p">)))</span></div><div class='line' id='LC711'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">((</span><span class="nb">not </span><span class="p">(</span><span class="nf">string=</span> <span class="s">&quot;&quot;</span> <span class="p">(</span><span class="nf">save-excursion</span> <span class="p">(</span><span class="nf">forward-char</span> <span class="mi">-1</span><span class="p">)</span> <span class="p">(</span><span class="nf">haskell-ident-at-point</span><span class="p">))))</span></div><div class='line' id='LC712'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">ident</span> <span class="p">(</span><span class="nf">save-excursion</span> <span class="p">(</span><span class="nf">forward-char</span> <span class="mi">-1</span><span class="p">)</span> <span class="p">(</span><span class="nf">haskell-ident-at-point</span><span class="p">))))</span></div><div class='line' id='LC713'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">insert</span> <span class="s">&quot; &quot;</span><span class="p">)</span></div><div class='line' id='LC714'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">haskell-process-do-try-info</span> <span class="nv">ident</span><span class="p">)))</span></div><div class='line' id='LC715'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">insert</span> <span class="s">&quot; &quot;</span><span class="p">)))))</span></div><div class='line' id='LC716'><br/></div><div class='line' id='LC717'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-mode-before-save-handler</span> <span class="p">()</span></div><div class='line' id='LC718'>&nbsp;&nbsp;<span class="s">&quot;Function that will be called before buffer&#39;s saving.&quot;</span></div><div class='line' id='LC719'>&nbsp;&nbsp;<span class="p">)</span></div><div class='line' id='LC720'><br/></div><div class='line' id='LC721'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-mode-after-save-handler</span> <span class="p">()</span></div><div class='line' id='LC722'>&nbsp;&nbsp;<span class="s">&quot;Function that will be called after buffer&#39;s saving.&quot;</span></div><div class='line' id='LC723'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="nv">haskell-tags-on-save</span></div><div class='line' id='LC724'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">ignore-errors</span> <span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">boundp</span> <span class="ss">&#39;haskell-session</span><span class="p">)</span> <span class="nv">haskell-session</span><span class="p">)</span></div><div class='line' id='LC725'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">haskell-process-generate-tags</span><span class="p">))))</span></div><div class='line' id='LC726'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="nv">haskell-stylish-on-save</span></div><div class='line' id='LC727'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">ignore-errors</span> <span class="p">(</span><span class="nf">haskell-mode-stylish-buffer</span><span class="p">)))</span></div><div class='line' id='LC728'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">before-save-hook</span> <span class="o">&#39;</span><span class="p">())</span></div><div class='line' id='LC729'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">after-save-hook</span> <span class="o">&#39;</span><span class="p">()))</span></div><div class='line' id='LC730'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">basic-save-buffer</span><span class="p">))</span></div><div class='line' id='LC731'>&nbsp;&nbsp;<span class="p">)</span></div><div class='line' id='LC732'><br/></div><div class='line' id='LC733'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-mode-buffer-apply-command</span> <span class="p">(</span><span class="nf">cmd</span><span class="p">)</span></div><div class='line' id='LC734'>&nbsp;&nbsp;<span class="s">&quot;Execute shell command CMD with current buffer as input and</span></div><div class='line' id='LC735'><span class="s">replace the whole buffer with the output. If CMD fails the buffer</span></div><div class='line' id='LC736'><span class="s">remains unchanged.&quot;</span></div><div class='line' id='LC737'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">set-buffer-modified-p</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC738'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">chomp</span> <span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">str</span><span class="p">)</span></div><div class='line' id='LC739'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="nf">string-match</span> <span class="s">&quot;\\`\n+\\|^\\s-+\\|\\s-+$\\|\n+\\&#39;&quot;</span> <span class="nv">str</span><span class="p">)</span></div><div class='line' id='LC740'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">setq</span> <span class="nv">str</span> <span class="p">(</span><span class="nf">replace-match</span> <span class="s">&quot;&quot;</span> <span class="nv">t</span> <span class="nv">t</span> <span class="nv">str</span><span class="p">)))</span></div><div class='line' id='LC741'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">str</span><span class="p">))</span></div><div class='line' id='LC742'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">errout</span> <span class="p">(</span><span class="k">lambda </span><span class="p">(</span><span class="nf">fmt</span> <span class="nv">&amp;rest</span> <span class="nv">args</span><span class="p">)</span></div><div class='line' id='LC743'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let* </span><span class="p">((</span><span class="nf">warning-fill-prefix</span> <span class="s">&quot;    &quot;</span><span class="p">))</span></div><div class='line' id='LC744'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">display-warning</span> <span class="nv">cmd</span> <span class="p">(</span><span class="nb">apply </span><span class="ss">&#39;format</span> <span class="nv">fmt</span> <span class="nv">args</span><span class="p">)</span> <span class="nv">:warning</span><span class="p">))))</span></div><div class='line' id='LC745'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">filename</span> <span class="p">(</span><span class="nf">buffer-file-name</span> <span class="p">(</span><span class="nf">current-buffer</span><span class="p">)))</span></div><div class='line' id='LC746'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">cmd-prefix</span> <span class="p">(</span><span class="nf">replace-regexp-in-string</span> <span class="s">&quot; .*&quot;</span> <span class="s">&quot;&quot;</span> <span class="nv">cmd</span><span class="p">))</span></div><div class='line' id='LC747'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">tmp-file</span> <span class="p">(</span><span class="nf">make-temp-file</span> <span class="nv">cmd-prefix</span><span class="p">))</span></div><div class='line' id='LC748'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">err-file</span> <span class="p">(</span><span class="nf">make-temp-file</span> <span class="nv">cmd-prefix</span><span class="p">))</span></div><div class='line' id='LC749'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">default-directory</span> <span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">boundp</span> <span class="ss">&#39;haskell-session</span><span class="p">)</span></div><div class='line' id='LC750'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">haskell-session</span><span class="p">)</span></div><div class='line' id='LC751'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">haskell-session-cabal-dir</span> <span class="nv">haskell-session</span><span class="p">)</span></div><div class='line' id='LC752'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="nv">default-directory</span><span class="p">))</span></div><div class='line' id='LC753'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">errcode</span> <span class="p">(</span><span class="nf">with-temp-file</span> <span class="nv">tmp-file</span></div><div class='line' id='LC754'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">call-process</span> <span class="nv">cmd</span> <span class="nv">filename</span></div><div class='line' id='LC755'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">list </span><span class="p">(</span><span class="nf">current-buffer</span><span class="p">)</span> <span class="nv">err-file</span><span class="p">)</span> <span class="nv">nil</span><span class="p">)))</span></div><div class='line' id='LC756'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">stderr-output</span></div><div class='line' id='LC757'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-temp-buffer</span></div><div class='line' id='LC758'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">insert-file-contents</span> <span class="nv">err-file</span><span class="p">)</span></div><div class='line' id='LC759'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">funcall</span> <span class="nv">chomp</span> <span class="p">(</span><span class="nf">buffer-substring-no-properties</span> <span class="p">(</span><span class="nf">point-min</span><span class="p">)</span> <span class="p">(</span><span class="nf">point-max</span><span class="p">)))))</span></div><div class='line' id='LC760'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">stdout-output</span></div><div class='line' id='LC761'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">with-temp-buffer</span></div><div class='line' id='LC762'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">insert-file-contents</span> <span class="nv">tmp-file</span><span class="p">)</span></div><div class='line' id='LC763'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">buffer-substring-no-properties</span> <span class="p">(</span><span class="nf">point-min</span><span class="p">)</span> <span class="p">(</span><span class="nf">point-max</span><span class="p">)))))</span></div><div class='line' id='LC764'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">string=</span> <span class="s">&quot;&quot;</span> <span class="nv">stderr-output</span><span class="p">)</span></div><div class='line' id='LC765'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="nf">string=</span> <span class="s">&quot;&quot;</span> <span class="nv">stdout-output</span><span class="p">)</span></div><div class='line' id='LC766'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">funcall</span> <span class="nv">errout</span></div><div class='line' id='LC767'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;Error: %s produced no output, leaving buffer alone&quot;</span> <span class="nv">cmd</span><span class="p">)</span></div><div class='line' id='LC768'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-restriction</span></div><div class='line' id='LC769'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">widen</span><span class="p">)</span></div><div class='line' id='LC770'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; command successful, insert file with replacement to preserve</span></div><div class='line' id='LC771'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; markers.</span></div><div class='line' id='LC772'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">insert-file-contents</span> <span class="nv">tmp-file</span> <span class="nv">nil</span> <span class="nv">nil</span> <span class="nv">nil</span> <span class="nv">t</span><span class="p">)))</span></div><div class='line' id='LC773'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c1">;; non-null stderr, command must have failed</span></div><div class='line' id='LC774'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">funcall</span> <span class="nv">errout</span> <span class="s">&quot;%s failed: %s&quot;</span> <span class="nv">cmd</span> <span class="nv">stderr-output</span><span class="p">)</span></div><div class='line' id='LC775'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">)</span></div><div class='line' id='LC776'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">delete-file</span> <span class="nv">tmp-file</span><span class="p">)</span></div><div class='line' id='LC777'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">delete-file</span> <span class="nv">err-file</span><span class="p">)</span></div><div class='line' id='LC778'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">))</span></div><div class='line' id='LC779'><br/></div><div class='line' id='LC780'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-mode-stylish-buffer</span> <span class="p">()</span></div><div class='line' id='LC781'>&nbsp;&nbsp;<span class="s">&quot;Apply stylish-haskell to the current buffer.&quot;</span></div><div class='line' id='LC782'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC783'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">column</span> <span class="p">(</span><span class="nf">current-column</span><span class="p">))</span></div><div class='line' id='LC784'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">line</span> <span class="p">(</span><span class="nf">line-number-at-pos</span><span class="p">)))</span></div><div class='line' id='LC785'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">haskell-mode-buffer-apply-command</span> <span class="s">&quot;stylish-haskell&quot;</span><span class="p">)</span></div><div class='line' id='LC786'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nf">point-min</span><span class="p">))</span></div><div class='line' id='LC787'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-line</span> <span class="p">(</span><span class="mi">1</span><span class="nv">-</span> <span class="nv">line</span><span class="p">))</span></div><div class='line' id='LC788'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">goto-char</span> <span class="p">(</span><span class="nb">+ </span><span class="nv">column</span> <span class="p">(</span><span class="nf">point</span><span class="p">)))))</span></div><div class='line' id='LC789'><br/></div><div class='line' id='LC790'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-mode-tag-find</span> <span class="p">(</span><span class="nf">&amp;optional</span> <span class="nv">next-p</span><span class="p">)</span></div><div class='line' id='LC791'>&nbsp;&nbsp;<span class="s">&quot;The tag find function, specific for the particular session.&quot;</span></div><div class='line' id='LC792'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span> <span class="s">&quot;P&quot;</span><span class="p">)</span></div><div class='line' id='LC793'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">tags-file-name</span> <span class="p">(</span><span class="nf">haskell-session-tags-filename</span> <span class="p">(</span><span class="nf">haskell-session</span><span class="p">)))</span></div><div class='line' id='LC794'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">tags-revert-without-query</span> <span class="nv">t</span><span class="p">)</span></div><div class='line' id='LC795'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">ident</span> <span class="p">(</span><span class="nf">haskell-ident-at-point</span><span class="p">)))</span></div><div class='line' id='LC796'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">when</span> <span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">string=</span> <span class="s">&quot;&quot;</span> <span class="p">(</span><span class="nf">haskell-trim</span> <span class="nv">ident</span><span class="p">)))</span></div><div class='line' id='LC797'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">cond </span><span class="p">((</span><span class="nf">file-exists-p</span> <span class="nv">tags-file-name</span><span class="p">)</span></div><div class='line' id='LC798'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">find-tag</span> <span class="nv">ident</span> <span class="nv">next-p</span><span class="p">))</span></div><div class='line' id='LC799'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">t</span> <span class="p">(</span><span class="nf">haskell-process-generate-tags</span> <span class="nv">ident</span><span class="p">))))))</span></div><div class='line' id='LC800'><br/></div><div class='line' id='LC801'><span class="c1">;; From Bryan O&#39;Sullivan&#39;s blog:</span></div><div class='line' id='LC802'><span class="c1">;; http://www.serpentine.com/blog/2007/10/09/using-emacs-to-insert-scc-annotations-in-haskell-code/</span></div><div class='line' id='LC803'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-mode-insert-scc-at-point</span> <span class="p">()</span></div><div class='line' id='LC804'>&nbsp;&nbsp;<span class="s">&quot;Insert an SCC annotation at point.&quot;</span></div><div class='line' id='LC805'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC806'>&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">or </span><span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;\\b\\|[ \t]\\|$&quot;</span><span class="p">)</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">bolp</span><span class="p">))</span></div><div class='line' id='LC807'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC808'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-char</span> <span class="mi">-1</span><span class="p">)</span></div><div class='line' id='LC809'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;\\b\\|[ \t]&quot;</span><span class="p">))))</span></div><div class='line' id='LC810'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">space-at-point</span> <span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;[ \t]&quot;</span><span class="p">)))</span></div><div class='line' id='LC811'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">unless</span> <span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="nf">bolp</span><span class="p">))</span> <span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC812'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-char</span> <span class="mi">-1</span><span class="p">)</span></div><div class='line' id='LC813'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">looking-at</span> <span class="s">&quot;[ \t]&quot;</span><span class="p">)))</span></div><div class='line' id='LC814'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">insert</span> <span class="s">&quot; &quot;</span><span class="p">))</span></div><div class='line' id='LC815'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">insert</span> <span class="s">&quot;{-# SCC \&quot;\&quot; #-}&quot;</span><span class="p">)</span></div><div class='line' id='LC816'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">unless</span> <span class="nv">space-at-point</span></div><div class='line' id='LC817'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">insert</span> <span class="s">&quot; &quot;</span><span class="p">))</span></div><div class='line' id='LC818'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-char</span> <span class="p">(</span><span class="k">if </span><span class="nv">space-at-point</span> <span class="mi">-5</span> <span class="mi">-6</span><span class="p">)))</span></div><div class='line' id='LC819'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">error</span> <span class="s">&quot;Not over an area of whitespace&quot;</span><span class="p">)))</span></div><div class='line' id='LC820'><br/></div><div class='line' id='LC821'><span class="c1">;; Also Bryan O&#39;Sullivan&#39;s.</span></div><div class='line' id='LC822'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-mode-kill-scc-at-point</span> <span class="p">()</span></div><div class='line' id='LC823'>&nbsp;&nbsp;<span class="s">&quot;Kill the SCC annotation at point.&quot;</span></div><div class='line' id='LC824'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span><span class="p">)</span></div><div class='line' id='LC825'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">save-excursion</span></div><div class='line' id='LC826'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">old-point</span> <span class="p">(</span><span class="nf">point</span><span class="p">))</span></div><div class='line' id='LC827'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">scc</span> <span class="s">&quot;\\({-#[ \t]*SCC \&quot;[^\&quot;]*\&quot;[ \t]*#-}\\)[ \t]*&quot;</span><span class="p">))</span></div><div class='line' id='LC828'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">while</span> <span class="p">(</span><span class="nb">not </span><span class="p">(</span><span class="k">or </span><span class="p">(</span><span class="nf">looking-at</span> <span class="nv">scc</span><span class="p">)</span> <span class="p">(</span><span class="nf">bolp</span><span class="p">)))</span></div><div class='line' id='LC829'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">forward-char</span> <span class="mi">-1</span><span class="p">))</span></div><div class='line' id='LC830'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="k">if </span><span class="p">(</span><span class="k">and </span><span class="p">(</span><span class="nf">looking-at</span> <span class="nv">scc</span><span class="p">)</span></div><div class='line' id='LC831'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">&lt;= </span><span class="p">(</span><span class="nf">match-beginning</span> <span class="mi">1</span><span class="p">)</span> <span class="nv">old-point</span><span class="p">)</span></div><div class='line' id='LC832'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nb">&gt; </span><span class="p">(</span><span class="nf">match-end</span> <span class="mi">1</span><span class="p">)</span> <span class="nv">old-point</span><span class="p">))</span></div><div class='line' id='LC833'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">kill-region</span> <span class="p">(</span><span class="nf">match-beginning</span> <span class="mi">0</span><span class="p">)</span> <span class="p">(</span><span class="nf">match-end</span> <span class="mi">0</span><span class="p">))</span></div><div class='line' id='LC834'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">error</span> <span class="s">&quot;No SCC at point&quot;</span><span class="p">)))))</span></div><div class='line' id='LC835'><br/></div><div class='line' id='LC836'><span class="p">(</span><span class="nf">defun</span> <span class="nv">haskell-rgrep</span> <span class="p">(</span><span class="nf">&amp;optional</span> <span class="nv">prompt</span><span class="p">)</span></div><div class='line' id='LC837'>&nbsp;&nbsp;<span class="s">&quot;Grep the effective project for the symbol at point. Very</span></div><div class='line' id='LC838'><span class="s">useful for codebase navigation. Prompts for an arbitrary regexp</span></div><div class='line' id='LC839'><span class="s">given a prefix arg.&quot;</span></div><div class='line' id='LC840'>&nbsp;&nbsp;<span class="p">(</span><span class="nf">interactive</span> <span class="s">&quot;P&quot;</span><span class="p">)</span></div><div class='line' id='LC841'>&nbsp;&nbsp;<span class="p">(</span><span class="k">let </span><span class="p">((</span><span class="nf">sym</span> <span class="p">(</span><span class="k">if </span><span class="nv">prompt</span></div><div class='line' id='LC842'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">read-from-minibuffer</span> <span class="s">&quot;Look for: &quot;</span><span class="p">)</span></div><div class='line' id='LC843'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">haskell-ident-at-point</span><span class="p">))))</span></div><div class='line' id='LC844'>&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">rgrep</span> <span class="nv">sym</span></div><div class='line' id='LC845'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="s">&quot;*.hs&quot;</span> <span class="c1">;; TODO: common Haskell extensions.</span></div><div class='line' id='LC846'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="p">(</span><span class="nf">haskell-session-current-dir</span> <span class="p">(</span><span class="nf">haskell-session</span><span class="p">)))))</span></div><div class='line' id='LC847'><br/></div><div class='line' id='LC848'><br/></div><div class='line' id='LC849'><span class="c1">;; Provide ourselves:</span></div><div class='line' id='LC850'><br/></div><div class='line' id='LC851'><span class="p">(</span><span class="nf">provide</span> <span class="ss">&#39;haskell-mode</span><span class="p">)</span></div><div class='line' id='LC852'><br/></div><div class='line' id='LC853'><span class="c1">;; Local Variables:</span></div><div class='line' id='LC854'><span class="c1">;; byte-compile-warnings: (not cl-functions)</span></div><div class='line' id='LC855'><span class="c1">;; End:</span></div><div class='line' id='LC856'><br/></div><div class='line' id='LC857'><span class="c1">;;; haskell-mode.el ends here</span></div></pre></div>
            </td>
          </tr>
        </table>
  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
<div id="jump-to-line" style="display:none">
  <form accept-charset="UTF-8" class="js-jump-to-line-form">
    <input class="linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" autofocus>
    <button type="submit" class="button">Go</button>
  </form>
</div>

        </div>

      </div><!-- /.repo-container -->
      <div class="modal-backdrop"></div>
    </div><!-- /.container -->
  </div><!-- /.site -->


    </div><!-- /.wrapper -->

      <div class="container">
  <div class="site-footer">
    <ul class="site-footer-links right">
      <li><a href="https://status.github.com/">Status</a></li>
      <li><a href="http://developer.github.com">API</a></li>
      <li><a href="http://training.github.com">Training</a></li>
      <li><a href="http://shop.github.com">Shop</a></li>
      <li><a href="/blog">Blog</a></li>
      <li><a href="/about">About</a></li>

    </ul>

    <a href="/">
      <span class="mega-octicon octicon-mark-github"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2013 <span title="0.06207s from fe1.rs.github.com">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/haskell/haskell-mode/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-remove-close close ajax-error-dismiss"></a>
      Something went wrong with that request. Please try again.
    </div>

    
  </body>
</html>

