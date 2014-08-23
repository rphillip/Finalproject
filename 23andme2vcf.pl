



<!DOCTYPE html>
<html lang="en" class="   ">
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    
    
    <title>23andme2vcf/23andme2vcf.pl at master · arrogantrobot/23andme2vcf</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png">
    <meta property="fb:app_id" content="1401488693436528">

      <meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="arrogantrobot/23andme2vcf" name="twitter:title" /><meta content="23andme2vcf - convert your 23andme raw file to VCF" name="twitter:description" /><meta content="https://avatars1.githubusercontent.com/u/407454?v=2&amp;s=400" name="twitter:image:src" />
<meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="https://avatars1.githubusercontent.com/u/407454?v=2&amp;s=400" property="og:image" /><meta content="arrogantrobot/23andme2vcf" property="og:title" /><meta content="https://github.com/arrogantrobot/23andme2vcf" property="og:url" /><meta content="23andme2vcf - convert your 23andme raw file to VCF" property="og:description" />

    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="conduit-xhr" href="https://ghconduit.com:25035">
    <link rel="xhr-socket" href="/_sockets">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>
      <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="collector-cdn.github.com" name="octolytics-script-host" /><meta content="github" name="octolytics-app-id" /><meta content="62C3AFE7:7B5F:22BBB179:53F7FA86" name="octolytics-dimension-request_id" /><meta content="1656970" name="octolytics-actor-id" /><meta content="rphillip" name="octolytics-actor-login" /><meta content="feace7316bef1d57470f467bd9997a161cffce59905823bf311aea6418eec685" name="octolytics-actor-hash" />
    

    
    
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">


    <meta content="authenticity_token" name="csrf-param" />
<meta content="BjNzE1P3jegS9RI9z1QeSbqRf6rqccTTBBPFjnEH7dAuGp4GL/grBY3BoDhjb+3O10md8Zf9BKaxoYcn5zBcjA==" name="csrf-token" />

    <link href="https://assets-cdn.github.com/assets/github-21576b23255b09a790d9dfda34985ede413e9c1a.css" media="all" rel="stylesheet" type="text/css" />
    <link href="https://assets-cdn.github.com/assets/github2-62138d451dd23e68a8d072db2308be042ed3b2ca.css" media="all" rel="stylesheet" type="text/css" />
    


    <meta http-equiv="x-pjax-version" content="abe2a224ed94b49a12734dea13a5f4da">

      
  <meta name="description" content="23andme2vcf - convert your 23andme raw file to VCF">
  <meta name="go-import" content="github.com/arrogantrobot/23andme2vcf git https://github.com/arrogantrobot/23andme2vcf.git">

  <meta content="407454" name="octolytics-dimension-user_id" /><meta content="arrogantrobot" name="octolytics-dimension-user_login" /><meta content="5399137" name="octolytics-dimension-repository_id" /><meta content="arrogantrobot/23andme2vcf" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="5399137" name="octolytics-dimension-repository_network_root_id" /><meta content="arrogantrobot/23andme2vcf" name="octolytics-dimension-repository_network_root_nwo" />
  <link href="https://github.com/arrogantrobot/23andme2vcf/commits/master.atom" rel="alternate" title="Recent Commits to 23andme2vcf:master" type="application/atom+xml">

  </head>


  <body class="logged_in  env-production windows vis-public page-blob">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div class="wrapper">
      
      
      
      


      <div class="header header-logged-in true">
  <div class="container clearfix">

    <a class="header-logo-invertocat" href="https://github.com/" aria-label="Homepage" ga-data-click="Header, go to dashboard, icon:logo">
  <span class="mega-octicon octicon-mark-github"></span>
</a>


      <div class="site-search repo-scope js-site-search">
          <form accept-charset="UTF-8" action="/arrogantrobot/23andme2vcf/search" class="js-site-search-form" data-global-search-url="/search" data-repo-search-url="/arrogantrobot/23andme2vcf/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
  <input type="text"
    class="js-site-search-field is-clearable"
    data-hotkey="s"
    name="q"
    placeholder="Search"
    data-global-scope-placeholder="Search GitHub"
    data-repo-scope-placeholder="Search"
    tabindex="1"
    autocapitalize="off">
  <div class="scope-badge">This repository</div>
</form>
      </div>
      <ul class="header-nav left">
        <li class="header-nav-item explore" data-ga-click="Header, go to explore, text:explore">
          <a class="header-nav-link" href="/explore">Explore</a>
        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="/blog" data-ga-click="Header, go to blog, text:blog">Blog</a>
          </li>
        <li class="header-nav-item">
          <a class="header-nav-link" href="https://help.github.com" data-ga-click="Header, go to help, text:help">Help</a>
        </li>
      </ul>

    
<ul class="header-nav user-nav right" id="user-links">
  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name" href="/rphillip" data-ga-click="Header, go to profile, text:username">
      <img alt="Ryan P Sulapas" class="avatar" data-user="1656970" height="20" src="https://avatars3.githubusercontent.com/u/1656970?v=2&amp;s=40" width="20" />
      <span class="css-truncate">
        <span class="css-truncate-target">rphillip</span>
      </span>
    </a>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link js-menu-target tooltipped tooltipped-s" href="#" aria-label="Create new..." data-ga-click="Header, create new, icon:add">
      <span class="octicon octicon-plus"></span>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      
<ul class="dropdown-menu">
  <li>
    <a href="/new"><span class="octicon octicon-repo"></span> New repository</a>
  </li>
  <li>
    <a href="/organizations/new"><span class="octicon octicon-organization"></span> New organization</a>
  </li>


    <li class="dropdown-divider"></li>
    <li class="dropdown-header">
      <span title="arrogantrobot/23andme2vcf">This repository</span>
    </li>
      <li>
        <a href="/arrogantrobot/23andme2vcf/issues/new"><span class="octicon octicon-issue-opened"></span> New issue</a>
      </li>
</ul>

    </div>
  </li>

  <li class="header-nav-item">
        <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
        <span class="mail-status all-read"></span>
        <span class="octicon octicon-inbox"></span>
</a>
  </li>

  <li class="header-nav-item">
    <a class="header-nav-link tooltipped tooltipped-s" href="/settings/profile" id="account_settings" aria-label="Settings" data-ga-click="Header, go to settings, icon:settings">
      <span class="octicon octicon-gear"></span>
    </a>
  </li>

  <li class="header-nav-item">
    <form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="SU14iG8uArfG0JvtIPQQW8nC9ExsAdycJQDC1+nNnD3WMW4N5giw4TtjSjuZnszLVotLzDm3Z0ykaemkgfhhjQ==" /></div>
      <button class="header-nav-link sign-out-button tooltipped tooltipped-s" aria-label="Sign out" data-ga-click="Header, sign out, icon:logout">
        <span class="octicon octicon-sign-out"></span>
      </button>
</form>  </li>

</ul>


    
  </div>
</div>

      

        


      <div id="start-of-content" class="accessibility-aid"></div>
          <div class="site" itemscope itemtype="http://schema.org/WebPage">
    <div id="js-flash-container">
      
    </div>
    <div class="pagehead repohead instapaper_ignore readability-menu">
      <div class="container">
        
<ul class="pagehead-actions">

    <li class="subscription">
      <form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="/0sOsRmzpZ+12O8u39ivXhESkUVnkLLwKpAhln01xt2zwIl4HjmnabSbACH3WTIybA6GoEAg9J79jFt9jz1Dyw==" /></div>  <input id="repository_id" name="repository_id" type="hidden" value="5399137" />

    <div class="select-menu js-menu-container js-select-menu">
      <a class="social-count js-social-count" href="/arrogantrobot/23andme2vcf/watchers">
        4
      </a>
      <a href="/arrogantrobot/23andme2vcf/subscription"
        class="minibutton select-menu-button with-count js-menu-target" role="button" tabindex="0" aria-haspopup="true">
        <span class="js-select-button">
          <span class="octicon octicon-eye"></span>
          Watch
        </span>
      </a>

      <div class="select-menu-modal-holder">
        <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
          <div class="select-menu-header">
            <span class="select-menu-title">Notifications</span>
            <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-list js-navigation-container" role="menu">

            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                <h4>Not watching</h4>
                <span class="description">Be notified when participating or @mentioned.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye"></span>
                  Watch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                <h4>Watching</h4>
                <span class="description">Be notified of all conversations.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-eye"></span>
                  Unwatch
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <div class="select-menu-item-text">
                <input id="do_ignore" name="do" type="radio" value="ignore" />
                <h4>Ignoring</h4>
                <span class="description">Never be notified.</span>
                <span class="js-select-button-text hidden-select-button-text">
                  <span class="octicon octicon-mute"></span>
                  Stop ignoring
                </span>
              </div>
            </div> <!-- /.select-menu-item -->

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

</form>
    </li>

  <li>
    
  <div class="js-toggler-container js-social-container starring-container ">

    <form accept-charset="UTF-8" action="/arrogantrobot/23andme2vcf/unstar" class="js-toggler-form starred js-unstar-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="LhnzrXGT4TcWzskmbZeL60A6Zn63ca1N2JsmxztZrfRhSwTOJgeYbdVterRxBpdAoo+PeFaQsN2Lzqn8F67Q8A==" /></div>
      <button
        class="minibutton with-count js-toggler-target star-button"
        aria-label="Unstar this repository" title="Unstar arrogantrobot/23andme2vcf">
        <span class="octicon octicon-star"></span>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/arrogantrobot/23andme2vcf/stargazers">
          10
        </a>
</form>
    <form accept-charset="UTF-8" action="/arrogantrobot/23andme2vcf/star" class="js-toggler-form unstarred js-star-button" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="AcPR0i8tb02kZs2gjuVa9GJen/DPUGpBreShKy0lHqMehHMCON6P+pDypd1pLR8RBVetOrBx/QU3isa/arES8g==" /></div>
      <button
        class="minibutton with-count js-toggler-target star-button"
        aria-label="Star this repository" title="Star arrogantrobot/23andme2vcf">
        <span class="octicon octicon-star"></span>
        Star
      </button>
        <a class="social-count js-social-count" href="/arrogantrobot/23andme2vcf/stargazers">
          10
        </a>
</form>  </div>

  </li>


        <li>
          <a href="/arrogantrobot/23andme2vcf/fork" class="minibutton with-count js-toggler-target fork-button tooltipped-n" title="Fork your own copy of arrogantrobot/23andme2vcf to your account" aria-label="Fork your own copy of arrogantrobot/23andme2vcf to your account" rel="facebox nofollow">
            <span class="octicon octicon-repo-forked"></span>
            Fork
          </a>
          <a href="/arrogantrobot/23andme2vcf/network" class="social-count">2</a>
        </li>

</ul>

        <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
          <span class="mega-octicon octicon-repo"></span>
          <span class="author"><a href="/arrogantrobot" class="url fn" itemprop="url" rel="author"><span itemprop="title">arrogantrobot</span></a></span><!--
       --><span class="path-divider">/</span><!--
       --><strong><a href="/arrogantrobot/23andme2vcf" class="js-current-repository js-repo-home-link">23andme2vcf</a></strong>

          <span class="page-context-loader">
            <img alt="" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
          </span>

        </h1>
      </div><!-- /.container -->
    </div><!-- /.repohead -->

    <div class="container">
      <div class="repository-with-sidebar repo-container new-discussion-timeline  ">
        <div class="repository-sidebar clearfix">
            
<div class="sunken-menu vertical-right repo-nav js-repo-nav js-repository-container-pjax js-octicon-loaders" data-issue-count-url="/arrogantrobot/23andme2vcf/issues/counts">
  <div class="sunken-menu-contents">
    <ul class="sunken-menu-group">
      <li class="tooltipped tooltipped-w" aria-label="Code">
        <a href="/arrogantrobot/23andme2vcf" aria-label="Code" class="selected js-selected-navigation-item sunken-menu-item" data-hotkey="g c" data-pjax="true" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /arrogantrobot/23andme2vcf">
          <span class="octicon octicon-code"></span> <span class="full-word">Code</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

        <li class="tooltipped tooltipped-w" aria-label="Issues">
          <a href="/arrogantrobot/23andme2vcf/issues" aria-label="Issues" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /arrogantrobot/23andme2vcf/issues">
            <span class="octicon octicon-issue-opened"></span> <span class="full-word">Issues</span>
            <span class="js-issue-replace-counter"></span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>

      <li class="tooltipped tooltipped-w" aria-label="Pull Requests">
        <a href="/arrogantrobot/23andme2vcf/pulls" aria-label="Pull Requests" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g p" data-selected-links="repo_pulls /arrogantrobot/23andme2vcf/pulls">
            <span class="octicon octicon-git-pull-request"></span> <span class="full-word">Pull Requests</span>
            <span class="js-pull-replace-counter"></span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>


        <li class="tooltipped tooltipped-w" aria-label="Wiki">
          <a href="/arrogantrobot/23andme2vcf/wiki" aria-label="Wiki" class="js-selected-navigation-item sunken-menu-item js-disable-pjax" data-hotkey="g w" data-selected-links="repo_wiki /arrogantrobot/23andme2vcf/wiki">
            <span class="octicon octicon-book"></span> <span class="full-word">Wiki</span>
            <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>        </li>
    </ul>
    <div class="sunken-menu-separator"></div>
    <ul class="sunken-menu-group">

      <li class="tooltipped tooltipped-w" aria-label="Pulse">
        <a href="/arrogantrobot/23andme2vcf/pulse/weekly" aria-label="Pulse" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="pulse /arrogantrobot/23andme2vcf/pulse/weekly">
          <span class="octicon octicon-pulse"></span> <span class="full-word">Pulse</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>

      <li class="tooltipped tooltipped-w" aria-label="Graphs">
        <a href="/arrogantrobot/23andme2vcf/graphs" aria-label="Graphs" class="js-selected-navigation-item sunken-menu-item" data-pjax="true" data-selected-links="repo_graphs repo_contributors /arrogantrobot/23andme2vcf/graphs">
          <span class="octicon octicon-graph"></span> <span class="full-word">Graphs</span>
          <img alt="" class="mini-loader" height="16" src="https://assets-cdn.github.com/images/spinners/octocat-spinner-32.gif" width="16" />
</a>      </li>
    </ul>


  </div>
</div>

              <div class="only-with-full-nav">
                
  
<div class="clone-url open"
  data-protocol-type="http"
  data-url="/users/set_protocol?protocol_selector=http&amp;protocol_type=clone">
  <h3><strong>HTTPS</strong> clone URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/arrogantrobot/23andme2vcf.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/arrogantrobot/23andme2vcf.git" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="ssh"
  data-url="/users/set_protocol?protocol_selector=ssh&amp;protocol_type=clone">
  <h3><strong>SSH</strong> clone URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="git@github.com:arrogantrobot/23andme2vcf.git" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="git@github.com:arrogantrobot/23andme2vcf.git" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>

  
<div class="clone-url "
  data-protocol-type="subversion"
  data-url="/users/set_protocol?protocol_selector=subversion&amp;protocol_type=clone">
  <h3><strong>Subversion</strong> checkout URL</h3>
  <div class="input-group">
    <input type="text" class="input-mini input-monospace js-url-field"
           value="https://github.com/arrogantrobot/23andme2vcf" readonly="readonly">
    <span class="input-group-button">
      <button aria-label="Copy to clipboard" class="js-zeroclipboard minibutton zeroclipboard-button" data-clipboard-text="https://github.com/arrogantrobot/23andme2vcf" data-copied-hint="Copied!" type="button"><span class="octicon octicon-clippy"></span></button>
    </span>
  </div>
</div>


<p class="clone-options">You can clone with
      <a href="#" class="js-clone-selector" data-protocol="http">HTTPS</a>,
      <a href="#" class="js-clone-selector" data-protocol="ssh">SSH</a>,
      or <a href="#" class="js-clone-selector" data-protocol="subversion">Subversion</a>.
  <a href="https://help.github.com/articles/which-remote-url-should-i-use" class="help tooltipped tooltipped-n" aria-label="Get help on which URL is right for you.">
    <span class="octicon octicon-question"></span>
  </a>
</p>


  <a href="github-windows://openRepo/https://github.com/arrogantrobot/23andme2vcf" class="minibutton sidebar-button" title="Save arrogantrobot/23andme2vcf to your computer and use it in GitHub Desktop." aria-label="Save arrogantrobot/23andme2vcf to your computer and use it in GitHub Desktop.">
    <span class="octicon octicon-device-desktop"></span>
    Clone in Desktop
  </a>

                <a href="/arrogantrobot/23andme2vcf/archive/master.zip"
                   class="minibutton sidebar-button"
                   aria-label="Download arrogantrobot/23andme2vcf as a zip file"
                   title="Download arrogantrobot/23andme2vcf as a zip file"
                   rel="nofollow">
                  <span class="octicon octicon-cloud-download"></span>
                  Download ZIP
                </a>
              </div>
        </div><!-- /.repository-sidebar -->

        <div id="js-repo-pjax-container" class="repository-content context-loader-container" data-pjax-container>
          

<a href="/arrogantrobot/23andme2vcf/blob/456be6779af84356407fdbd0272d911eaf66eb62/23andme2vcf.pl" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:bf43dde4c524f7e9b6aaa5d1cac939e1 -->

<div class="file-navigation">
  
<div class="select-menu js-menu-container js-select-menu left">
  <span class="minibutton select-menu-button js-menu-target css-truncate" data-hotkey="w"
    data-master-branch="master"
    data-ref="master"
    title="master"
    role="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <span class="octicon octicon-git-branch"></span>
    <i>branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </span>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <span class="select-menu-title">Switch branches/tags</span>
        <span class="octicon octicon-x js-menu-close" role="button" aria-label="Close"></span>
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


            <div class="select-menu-item js-navigation-item selected">
              <span class="select-menu-item-icon octicon octicon-check"></span>
              <a href="/arrogantrobot/23andme2vcf/blob/master/23andme2vcf.pl"
                 data-name="master"
                 data-skip-pjax="true"
                 rel="nofollow"
                 class="js-navigation-open select-menu-item-text css-truncate-target"
                 title="master">master</a>
            </div> <!-- /.select-menu-item -->
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div> <!-- /.select-menu-list -->

    </div> <!-- /.select-menu-modal -->
  </div> <!-- /.select-menu-modal-holder -->
</div> <!-- /.select-menu -->

  <div class="button-group right">
    <a href="/arrogantrobot/23andme2vcf/find/master"
          class="js-show-file-finder minibutton empty-icon tooltipped tooltipped-s"
          data-pjax
          data-hotkey="t"
          aria-label="Quickly jump between files">
      <span class="octicon octicon-list-unordered"></span>
    </a>
    <button class="js-zeroclipboard minibutton zeroclipboard-button"
          data-clipboard-text="23andme2vcf.pl"
          aria-label="Copy to clipboard"
          data-copied-hint="Copied!">
      <span class="octicon octicon-clippy"></span>
    </button>
  </div>

  <div class="breadcrumb">
    <span class='repo-root js-repo-root'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/arrogantrobot/23andme2vcf" class="" data-branch="master" data-direction="back" data-pjax="true" itemscope="url"><span itemprop="title">23andme2vcf</span></a></span></span><span class="separator"> / </span><strong class="final-path">23andme2vcf.pl</strong>
  </div>
</div>


  <div class="commit file-history-tease">
      <img alt="Rob" class="main-avatar" data-user="407454" height="24" src="https://avatars3.githubusercontent.com/u/407454?v=2&amp;s=48" width="24" />
      <span class="author"><a href="/arrogantrobot" rel="author">arrogantrobot</a></span>
      <time datetime="2014-04-22T23:55:49-05:00" is="relative-time">April 22, 2014</time>
      <div class="commit-title">
          <a href="/arrogantrobot/23andme2vcf/commit/77c115e74a0e8c2def7bb46a7bcfdd4acc388520" class="message" data-pjax="true" title="add v4 reference">add v4 reference</a>
      </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>1</strong>  contributor</a></p>
      

    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list">
          <li class="facebox-user-list-item">
            <img alt="Rob" data-user="407454" height="24" src="https://avatars3.githubusercontent.com/u/407454?v=2&amp;s=48" width="24" />
            <a href="/arrogantrobot">arrogantrobot</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file-box">
  <div class="file">
    <div class="meta clearfix">
      <div class="info file-name">
          <span class="mode" title="File mode">executable file</span>
          <span class="meta-divider"></span>
          <span>195 lines (165 sloc)</span>
          <span class="meta-divider"></span>
        <span>4.485 kb</span>
      </div>
      <div class="actions">
        <div class="button-group">
          <a href="/arrogantrobot/23andme2vcf/raw/master/23andme2vcf.pl" class="minibutton " id="raw-url">Raw</a>
            <a href="/arrogantrobot/23andme2vcf/blame/master/23andme2vcf.pl" class="minibutton js-update-url-with-hash">Blame</a>
          <a href="/arrogantrobot/23andme2vcf/commits/master/23andme2vcf.pl" class="minibutton " rel="nofollow">History</a>
        </div><!-- /.button-group -->

          <a class="octicon-button tooltipped tooltipped-nw"
             href="github-windows://openRepo/https://github.com/arrogantrobot/23andme2vcf?branch=master&amp;filepath=23andme2vcf.pl" aria-label="Open this file in GitHub for Windows">
              <span class="octicon octicon-device-desktop"></span>
          </a>

              <a class="octicon-button tooltipped tooltipped-n js-update-url-with-hash"
                 aria-label="Clicking this button will fork this project so you can edit the file"
                 href="/arrogantrobot/23andme2vcf/edit/master/23andme2vcf.pl"
                 data-method="post" rel="nofollow"><span class="octicon octicon-pencil"></span></a>

            <a class="octicon-button danger tooltipped tooltipped-s"
               href="/arrogantrobot/23andme2vcf/delete/master/23andme2vcf.pl"
               aria-label="Fork this project and delete file"
               data-method="post" data-test-id="delete-blob-file" rel="nofollow">
          <span class="octicon octicon-trashcan"></span>
        </a>
      </div><!-- /.actions -->
    </div>
      
  <div class="blob-wrapper data type-perl">
      <table class="highlight tab-size-8 js-file-line-container">
      <tr>
        <td id="L1" class="blob-line-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-line-code js-file-line"><span class="c1">#!/usr/bin/env perl</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-line-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L3" class="blob-line-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-line-code js-file-line"><span class="k">use</span> <span class="n">strict</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-line-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-line-code js-file-line"><span class="k">use</span> <span class="n">warnings</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-line-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L6" class="blob-line-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-line-code js-file-line"><span class="k">use</span> <span class="nn">IO::</span><span class="n">File</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L7" class="blob-line-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-line-code js-file-line"><span class="k">use</span> <span class="n">POSIX</span> <span class="sx">qw/strftime/</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L8" class="blob-line-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L9" class="blob-line-num js-line-number" data-line-number="9"></td>
        <td id="LC9" class="blob-line-code js-file-line"><span class="n">usage</span><span class="p">()</span> <span class="k">unless</span> <span class="nv">@ARGV</span> <span class="o">&gt;=</span> <span class="mi">2</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L10" class="blob-line-num js-line-number" data-line-number="10"></td>
        <td id="LC10" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L11" class="blob-line-num js-line-number" data-line-number="11"></td>
        <td id="LC11" class="blob-line-code js-file-line"><span class="k">my</span> <span class="p">(</span><span class="nv">$ref_chr</span><span class="p">,</span> <span class="nv">$ref_pos</span><span class="p">,</span> <span class="nv">$ref_base</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L12" class="blob-line-num js-line-number" data-line-number="12"></td>
        <td id="LC12" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$PASS</span> <span class="o">=</span> <span class="s">&quot;PASS&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L13" class="blob-line-num js-line-number" data-line-number="13"></td>
        <td id="LC13" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$skip_count</span> <span class="o">=</span> <span class="mi">0</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L14" class="blob-line-num js-line-number" data-line-number="14"></td>
        <td id="LC14" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L15" class="blob-line-num js-line-number" data-line-number="15"></td>
        <td id="LC15" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$raw_path</span> <span class="o">=</span> <span class="nv">$ARGV</span><span class="p">[</span><span class="mi">0</span><span class="p">];</span></td>
      </tr>
      <tr>
        <td id="L16" class="blob-line-num js-line-number" data-line-number="16"></td>
        <td id="LC16" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$output_path</span> <span class="o">=</span> <span class="nv">$ARGV</span><span class="p">[</span><span class="mi">1</span><span class="p">];</span></td>
      </tr>
      <tr>
        <td id="L17" class="blob-line-num js-line-number" data-line-number="17"></td>
        <td id="LC17" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$version</span> <span class="o">=</span> <span class="p">(</span><span class="nb">defined</span><span class="p">(</span><span class="nv">$ARGV</span><span class="p">[</span><span class="mi">2</span><span class="p">]))</span> <span class="p">?</span> <span class="nb">int</span><span class="p">(</span><span class="nv">$ARGV</span><span class="p">[</span><span class="mi">2</span><span class="p">])</span> <span class="p">:</span> <span class="mi">3</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L18" class="blob-line-num js-line-number" data-line-number="18"></td>
        <td id="LC18" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$ref_path</span> <span class="o">=</span> <span class="s">&quot;23andme_v&quot;</span><span class="o">.</span><span class="nv">$version</span><span class="o">.</span><span class="s">&quot;_hg19_ref.txt.gz&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L19" class="blob-line-num js-line-number" data-line-number="19"></td>
        <td id="LC19" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$missing_ref_path</span> <span class="o">=</span> <span class="s">&quot;sites_not_in_reference.txt&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L20" class="blob-line-num js-line-number" data-line-number="20"></td>
        <td id="LC20" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L21" class="blob-line-num js-line-number" data-line-number="21"></td>
        <td id="LC21" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$date</span> <span class="o">=</span> <span class="n">strftime</span><span class="p">(</span><span class="s">&#39;%Y%m%d&#39;</span><span class="p">,</span><span class="nb">localtime</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L22" class="blob-line-num js-line-number" data-line-number="22"></td>
        <td id="LC22" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L23" class="blob-line-num js-line-number" data-line-number="23"></td>
        <td id="LC23" class="blob-line-code js-file-line"><span class="n">missing</span><span class="p">(</span><span class="nv">$raw_path</span><span class="p">)</span> <span class="k">unless</span> <span class="o">-</span><span class="n">s</span> <span class="nv">$raw_path</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L24" class="blob-line-num js-line-number" data-line-number="24"></td>
        <td id="LC24" class="blob-line-code js-file-line"><span class="n">missing</span><span class="p">(</span><span class="nv">$ref_path</span><span class="p">)</span> <span class="k">unless</span> <span class="o">-</span><span class="n">s</span> <span class="nv">$ref_path</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L25" class="blob-line-num js-line-number" data-line-number="25"></td>
        <td id="LC25" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L26" class="blob-line-num js-line-number" data-line-number="26"></td>
        <td id="LC26" class="blob-line-code js-file-line"><span class="c1">#open the raw data as a zip or text</span></td>
      </tr>
      <tr>
        <td id="L27" class="blob-line-num js-line-number" data-line-number="27"></td>
        <td id="LC27" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$fh</span> <span class="o">=</span> <span class="p">(</span><span class="nv">$raw_path</span> <span class="o">=~</span> <span class="sr">m/zip$/</span><span class="p">)</span> <span class="p">?</span> <span class="nn">IO::</span><span class="n">File</span><span class="o">-&gt;</span><span class="k">new</span><span class="p">(</span><span class="s">&quot;gunzip -c $raw_path|&quot;</span><span class="p">)</span> <span class="p">:</span> <span class="nn">IO::</span><span class="n">File</span><span class="o">-&gt;</span><span class="k">new</span><span class="p">(</span><span class="nv">$raw_path</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L28" class="blob-line-num js-line-number" data-line-number="28"></td>
        <td id="LC28" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L29" class="blob-line-num js-line-number" data-line-number="29"></td>
        <td id="LC29" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$output_fh</span> <span class="o">=</span> <span class="nn">IO::</span><span class="n">File</span><span class="o">-&gt;</span><span class="k">new</span><span class="p">(</span><span class="s">&quot;&gt;$output_path&quot;</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L30" class="blob-line-num js-line-number" data-line-number="30"></td>
        <td id="LC30" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$missing_ref_fh</span> <span class="o">=</span> <span class="o">-</span><span class="mi">1</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L31" class="blob-line-num js-line-number" data-line-number="31"></td>
        <td id="LC31" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L32" class="blob-line-num js-line-number" data-line-number="32"></td>
        <td id="LC32" class="blob-line-code js-file-line"><span class="c1">#print the header for the VCF</span></td>
      </tr>
      <tr>
        <td id="L33" class="blob-line-num js-line-number" data-line-number="33"></td>
        <td id="LC33" class="blob-line-code js-file-line"><span class="k">print</span> <span class="nv">$output_fh</span> <span class="s">&quot;##fileformat=VCFv4.1\n&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L34" class="blob-line-num js-line-number" data-line-number="34"></td>
        <td id="LC34" class="blob-line-code js-file-line"><span class="k">print</span> <span class="nv">$output_fh</span> <span class="s">&quot;##fileDate=$date\n&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L35" class="blob-line-num js-line-number" data-line-number="35"></td>
        <td id="LC35" class="blob-line-code js-file-line"><span class="k">print</span> <span class="nv">$output_fh</span> <span class="s">&quot;##source=23andme2vcf.pl https://github.com/arrogantrobot/23andme2vcf\n&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L36" class="blob-line-num js-line-number" data-line-number="36"></td>
        <td id="LC36" class="blob-line-code js-file-line"><span class="k">print</span> <span class="nv">$output_fh</span> <span class="s">&quot;##reference=file://$ref_path\n&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L37" class="blob-line-num js-line-number" data-line-number="37"></td>
        <td id="LC37" class="blob-line-code js-file-line"><span class="k">print</span> <span class="nv">$output_fh</span> <span class="s">&quot;##FORMAT=&lt;ID=GT,Number=1,Type=String,Description=\&quot;Genotype\&quot;&gt;\n&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L38" class="blob-line-num js-line-number" data-line-number="38"></td>
        <td id="LC38" class="blob-line-code js-file-line"><span class="k">print</span> <span class="nv">$output_fh</span> <span class="s">&quot;#CHROM\tPOS\tID\tREF\tALT\tQUAL\tFILTER\tINFO\tFORMAT\tGENOTYPE\n&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L39" class="blob-line-num js-line-number" data-line-number="39"></td>
        <td id="LC39" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L40" class="blob-line-num js-line-number" data-line-number="40"></td>
        <td id="LC40" class="blob-line-code js-file-line"><span class="c1"># load reference into memory, thank you @MattBrauer for this chunk of code! -- issue #4</span></td>
      </tr>
      <tr>
        <td id="L41" class="blob-line-num js-line-number" data-line-number="41"></td>
        <td id="LC41" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">%ref</span> <span class="o">=</span> <span class="p">();</span></td>
      </tr>
      <tr>
        <td id="L42" class="blob-line-num js-line-number" data-line-number="42"></td>
        <td id="LC42" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$ref_fh</span> <span class="o">=</span> <span class="nn">IO::</span><span class="n">File</span><span class="o">-&gt;</span><span class="k">new</span><span class="p">(</span><span class="s">&quot;gunzip -c $ref_path|&quot;</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L43" class="blob-line-num js-line-number" data-line-number="43"></td>
        <td id="LC43" class="blob-line-code js-file-line"><span class="k">while</span><span class="p">(</span><span class="sr">&lt;$ref_fh&gt;</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L44" class="blob-line-num js-line-number" data-line-number="44"></td>
        <td id="LC44" class="blob-line-code js-file-line">  <span class="nb">chomp</span> <span class="nv">$_</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L45" class="blob-line-num js-line-number" data-line-number="45"></td>
        <td id="LC45" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="p">(</span><span class="nv">$chr</span><span class="p">,</span><span class="nv">$pos</span><span class="p">,</span><span class="nv">$rsid</span><span class="p">,</span><span class="nv">$ref</span><span class="p">)</span> <span class="o">=</span> <span class="nb">split</span> <span class="sr">/\t/</span><span class="p">,</span> <span class="nv">$_</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L46" class="blob-line-num js-line-number" data-line-number="46"></td>
        <td id="LC46" class="blob-line-code js-file-line">  <span class="nv">$ref</span><span class="p">{</span><span class="nv">$chr</span><span class="p">}{</span><span class="nv">$pos</span><span class="p">}</span> <span class="o">=</span> <span class="p">{</span> </td>
      </tr>
      <tr>
        <td id="L47" class="blob-line-num js-line-number" data-line-number="47"></td>
        <td id="LC47" class="blob-line-code js-file-line">    <span class="n">rsid</span> <span class="o">=&gt;</span> <span class="nv">$rsid</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L48" class="blob-line-num js-line-number" data-line-number="48"></td>
        <td id="LC48" class="blob-line-code js-file-line">    <span class="nb">ref</span> <span class="o">=&gt;</span> <span class="nv">$ref</span><span class="p">,</span></td>
      </tr>
      <tr>
        <td id="L49" class="blob-line-num js-line-number" data-line-number="49"></td>
        <td id="LC49" class="blob-line-code js-file-line">  <span class="p">};</span></td>
      </tr>
      <tr>
        <td id="L50" class="blob-line-num js-line-number" data-line-number="50"></td>
        <td id="LC50" class="blob-line-code js-file-line"><span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L51" class="blob-line-num js-line-number" data-line-number="51"></td>
        <td id="LC51" class="blob-line-code js-file-line"><span class="nb">close</span> <span class="nv">$ref_fh</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L52" class="blob-line-num js-line-number" data-line-number="52"></td>
        <td id="LC52" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L53" class="blob-line-num js-line-number" data-line-number="53"></td>
        <td id="LC53" class="blob-line-code js-file-line"><span class="c1">#skip the header of the 23andme file</span></td>
      </tr>
      <tr>
        <td id="L54" class="blob-line-num js-line-number" data-line-number="54"></td>
        <td id="LC54" class="blob-line-code js-file-line"><span class="k">my</span> <span class="nv">$line</span> <span class="o">=</span> <span class="nv">$fh</span><span class="o">-&gt;</span><span class="n">getline</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L55" class="blob-line-num js-line-number" data-line-number="55"></td>
        <td id="LC55" class="blob-line-code js-file-line"><span class="k">while</span><span class="p">(</span><span class="nv">$line</span> <span class="o">=~</span> <span class="sr">m/^#/</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L56" class="blob-line-num js-line-number" data-line-number="56"></td>
        <td id="LC56" class="blob-line-code js-file-line">  <span class="nv">$line</span> <span class="o">=</span> <span class="nv">$fh</span><span class="o">-&gt;</span><span class="n">getline</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L57" class="blob-line-num js-line-number" data-line-number="57"></td>
        <td id="LC57" class="blob-line-code js-file-line"><span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L58" class="blob-line-num js-line-number" data-line-number="58"></td>
        <td id="LC58" class="blob-line-code js-file-line"><span class="nb">seek</span><span class="p">(</span><span class="nv">$fh</span><span class="p">,</span> <span class="o">-</span><span class="nb">length</span><span class="p">(</span><span class="nv">$line</span><span class="p">),</span> <span class="mi">1</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L59" class="blob-line-num js-line-number" data-line-number="59"></td>
        <td id="LC59" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L60" class="blob-line-num js-line-number" data-line-number="60"></td>
        <td id="LC60" class="blob-line-code js-file-line"><span class="c1">#process 23andme data line by line</span></td>
      </tr>
      <tr>
        <td id="L61" class="blob-line-num js-line-number" data-line-number="61"></td>
        <td id="LC61" class="blob-line-code js-file-line"><span class="k">while</span><span class="p">(</span><span class="k">my</span> <span class="nv">$line</span> <span class="o">=</span> <span class="nv">$fh</span><span class="o">-&gt;</span><span class="n">getline</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L62" class="blob-line-num js-line-number" data-line-number="62"></td>
        <td id="LC62" class="blob-line-code js-file-line">  <span class="nb">chomp</span> <span class="nv">$line</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L63" class="blob-line-num js-line-number" data-line-number="63"></td>
        <td id="LC63" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L64" class="blob-line-num js-line-number" data-line-number="64"></td>
        <td id="LC64" class="blob-line-code js-file-line">  <span class="c1">#read in a line of the 23andme data</span></td>
      </tr>
      <tr>
        <td id="L65" class="blob-line-num js-line-number" data-line-number="65"></td>
        <td id="LC65" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="p">(</span><span class="nv">$rsid</span><span class="p">,</span> <span class="nv">$chr</span><span class="p">,</span> <span class="nv">$pos</span><span class="p">,</span> <span class="nv">$alleles</span><span class="p">)</span> <span class="o">=</span> <span class="nb">split</span> <span class="sr">/\t/</span><span class="p">,</span> <span class="nv">$line</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L66" class="blob-line-num js-line-number" data-line-number="66"></td>
        <td id="LC66" class="blob-line-code js-file-line">  <span class="k">if</span> <span class="p">(</span><span class="ow">not</span> <span class="nv">$rsid</span><span class="p">)</span> <span class="p">{</span> </td>
      </tr>
      <tr>
        <td id="L67" class="blob-line-num js-line-number" data-line-number="67"></td>
        <td id="LC67" class="blob-line-code js-file-line">    <span class="nv">$rsid</span> <span class="o">=</span> <span class="s">&quot;.&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L68" class="blob-line-num js-line-number" data-line-number="68"></td>
        <td id="LC68" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L69" class="blob-line-num js-line-number" data-line-number="69"></td>
        <td id="LC69" class="blob-line-code js-file-line">  <span class="nb">chomp</span> <span class="nv">$alleles</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L70" class="blob-line-num js-line-number" data-line-number="70"></td>
        <td id="LC70" class="blob-line-code js-file-line">  <span class="c1">#skip current line if the call was &quot;--&quot;</span></td>
      </tr>
      <tr>
        <td id="L71" class="blob-line-num js-line-number" data-line-number="71"></td>
        <td id="LC71" class="blob-line-code js-file-line">  <span class="k">if</span> <span class="p">(</span><span class="nb">substr</span><span class="p">(</span><span class="nv">$alleles</span><span class="p">,</span><span class="mi">0</span><span class="p">,</span><span class="mi">1</span><span class="p">)</span> <span class="ow">eq</span> <span class="s">&#39;-&#39;</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L72" class="blob-line-num js-line-number" data-line-number="72"></td>
        <td id="LC72" class="blob-line-code js-file-line">    <span class="k">next</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L73" class="blob-line-num js-line-number" data-line-number="73"></td>
        <td id="LC73" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L74" class="blob-line-num js-line-number" data-line-number="74"></td>
        <td id="LC74" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L75" class="blob-line-num js-line-number" data-line-number="75"></td>
        <td id="LC75" class="blob-line-code js-file-line">  <span class="c1">#skip insertions and deletions</span></td>
      </tr>
      <tr>
        <td id="L76" class="blob-line-num js-line-number" data-line-number="76"></td>
        <td id="LC76" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="nv">$al</span> <span class="o">=</span> <span class="nb">substr</span><span class="p">(</span><span class="nv">$alleles</span><span class="p">,</span><span class="mi">0</span><span class="p">,</span><span class="mi">1</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L77" class="blob-line-num js-line-number" data-line-number="77"></td>
        <td id="LC77" class="blob-line-code js-file-line">  <span class="k">if</span> <span class="p">((</span><span class="nv">$al</span> <span class="ow">eq</span> <span class="s">&quot;D&quot;</span><span class="p">)</span> <span class="o">||</span> <span class="p">(</span><span class="nv">$al</span> <span class="ow">eq</span> <span class="s">&quot;I&quot;</span><span class="p">))</span> <span class="p">{</span> </td>
      </tr>
      <tr>
        <td id="L78" class="blob-line-num js-line-number" data-line-number="78"></td>
        <td id="LC78" class="blob-line-code js-file-line">    <span class="k">next</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L79" class="blob-line-num js-line-number" data-line-number="79"></td>
        <td id="LC79" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L80" class="blob-line-num js-line-number" data-line-number="80"></td>
        <td id="LC80" class="blob-line-code js-file-line">  <span class="c1">#change MT to M, to match reference</span></td>
      </tr>
      <tr>
        <td id="L81" class="blob-line-num js-line-number" data-line-number="81"></td>
        <td id="LC81" class="blob-line-code js-file-line">  <span class="k">if</span> <span class="p">(</span><span class="nb">substr</span><span class="p">(</span><span class="nv">$chr</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="mi">2</span><span class="p">)</span> <span class="ow">eq</span> <span class="s">&#39;MT&#39;</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L82" class="blob-line-num js-line-number" data-line-number="82"></td>
        <td id="LC82" class="blob-line-code js-file-line">    <span class="nv">$chr</span> <span class="o">=</span> <span class="s">&quot;M&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L83" class="blob-line-num js-line-number" data-line-number="83"></td>
        <td id="LC83" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L84" class="blob-line-num js-line-number" data-line-number="84"></td>
        <td id="LC84" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L85" class="blob-line-num js-line-number" data-line-number="85"></td>
        <td id="LC85" class="blob-line-code js-file-line">  <span class="c1">#append &quot;chr&quot; to chromosome names to match reference</span></td>
      </tr>
      <tr>
        <td id="L86" class="blob-line-num js-line-number" data-line-number="86"></td>
        <td id="LC86" class="blob-line-code js-file-line">  <span class="nv">$chr</span> <span class="o">=</span> <span class="s">&quot;chr$chr&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L87" class="blob-line-num js-line-number" data-line-number="87"></td>
        <td id="LC87" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L88" class="blob-line-num js-line-number" data-line-number="88"></td>
        <td id="LC88" class="blob-line-code js-file-line">  <span class="c1">#get the reference base from 23andme ref </span></td>
      </tr>
      <tr>
        <td id="L89" class="blob-line-num js-line-number" data-line-number="89"></td>
        <td id="LC89" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="nv">$ref</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L90" class="blob-line-num js-line-number" data-line-number="90"></td>
        <td id="LC90" class="blob-line-code js-file-line">  <span class="k">if</span> <span class="p">(</span><span class="nb">exists</span><span class="p">(</span><span class="nv">$ref</span><span class="p">{</span><span class="nv">$chr</span><span class="p">}{</span><span class="nv">$pos</span><span class="p">}))</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L91" class="blob-line-num js-line-number" data-line-number="91"></td>
        <td id="LC91" class="blob-line-code js-file-line">    <span class="nv">$ref</span> <span class="o">=</span> <span class="nv">$ref</span><span class="p">{</span><span class="nv">$chr</span><span class="p">}{</span><span class="nv">$pos</span><span class="p">}{</span><span class="nb">ref</span><span class="p">};</span></td>
      </tr>
      <tr>
        <td id="L92" class="blob-line-num js-line-number" data-line-number="92"></td>
        <td id="LC92" class="blob-line-code js-file-line">  <span class="p">}</span> <span class="k">else</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L93" class="blob-line-num js-line-number" data-line-number="93"></td>
        <td id="LC93" class="blob-line-code js-file-line">    <span class="n">missing_sites</span><span class="p">(</span><span class="nv">$rsid</span><span class="p">,</span><span class="nv">$chr</span><span class="p">,</span><span class="nv">$pos</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L94" class="blob-line-num js-line-number" data-line-number="94"></td>
        <td id="LC94" class="blob-line-code js-file-line">    <span class="k">next</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L95" class="blob-line-num js-line-number" data-line-number="95"></td>
        <td id="LC95" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L96" class="blob-line-num js-line-number" data-line-number="96"></td>
        <td id="LC96" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L97" class="blob-line-num js-line-number" data-line-number="97"></td>
        <td id="LC97" class="blob-line-code js-file-line">  <span class="k">if</span> <span class="p">(</span><span class="nv">$ref</span> <span class="ow">eq</span> <span class="nv">$PASS</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L98" class="blob-line-num js-line-number" data-line-number="98"></td>
        <td id="LC98" class="blob-line-code js-file-line">    <span class="k">next</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L99" class="blob-line-num js-line-number" data-line-number="99"></td>
        <td id="LC99" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L100" class="blob-line-num js-line-number" data-line-number="100"></td>
        <td id="LC100" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L101" class="blob-line-num js-line-number" data-line-number="101"></td>
        <td id="LC101" class="blob-line-code js-file-line">  <span class="c1">#get the genotype</span></td>
      </tr>
      <tr>
        <td id="L102" class="blob-line-num js-line-number" data-line-number="102"></td>
        <td id="LC102" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="p">(</span><span class="nv">$alt</span><span class="p">,</span><span class="nv">$genotype</span><span class="p">)</span> <span class="o">=</span> <span class="n">getAltAndGenotype</span><span class="p">(</span><span class="nv">$ref</span><span class="p">,</span> <span class="nv">$alleles</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L103" class="blob-line-num js-line-number" data-line-number="103"></td>
        <td id="LC103" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L104" class="blob-line-num js-line-number" data-line-number="104"></td>
        <td id="LC104" class="blob-line-code js-file-line">  <span class="c1">#output a line of VCF data</span></td>
      </tr>
      <tr>
        <td id="L105" class="blob-line-num js-line-number" data-line-number="105"></td>
        <td id="LC105" class="blob-line-code js-file-line">  <span class="k">print</span> <span class="nv">$output_fh</span> <span class="s">&quot;$chr\t$pos\t$rsid\t$ref\t$alt\t.\t.\t.\tGT\t$genotype\n&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L106" class="blob-line-num js-line-number" data-line-number="106"></td>
        <td id="LC106" class="blob-line-code js-file-line"><span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L107" class="blob-line-num js-line-number" data-line-number="107"></td>
        <td id="LC107" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L108" class="blob-line-num js-line-number" data-line-number="108"></td>
        <td id="LC108" class="blob-line-code js-file-line"><span class="nv">$fh</span><span class="o">-&gt;</span><span class="nb">close</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L109" class="blob-line-num js-line-number" data-line-number="109"></td>
        <td id="LC109" class="blob-line-code js-file-line"><span class="nv">$output_fh</span><span class="o">-&gt;</span><span class="nb">close</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L110" class="blob-line-num js-line-number" data-line-number="110"></td>
        <td id="LC110" class="blob-line-code js-file-line"><span class="k">if</span> <span class="p">(</span><span class="nv">$missing_ref_fh</span> <span class="o">!=</span> <span class="o">-</span><span class="mi">1</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L111" class="blob-line-num js-line-number" data-line-number="111"></td>
        <td id="LC111" class="blob-line-code js-file-line">  <span class="nv">$missing_ref_fh</span><span class="o">-&gt;</span><span class="nb">close</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L112" class="blob-line-num js-line-number" data-line-number="112"></td>
        <td id="LC112" class="blob-line-code js-file-line"><span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L113" class="blob-line-num js-line-number" data-line-number="113"></td>
        <td id="LC113" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L114" class="blob-line-num js-line-number" data-line-number="114"></td>
        <td id="LC114" class="blob-line-code js-file-line"><span class="n">skips</span><span class="p">();</span></td>
      </tr>
      <tr>
        <td id="L115" class="blob-line-num js-line-number" data-line-number="115"></td>
        <td id="LC115" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L116" class="blob-line-num js-line-number" data-line-number="116"></td>
        <td id="LC116" class="blob-line-code js-file-line"><span class="c1">#determine genotype</span></td>
      </tr>
      <tr>
        <td id="L117" class="blob-line-num js-line-number" data-line-number="117"></td>
        <td id="LC117" class="blob-line-code js-file-line"><span class="k">sub </span><span class="nf">getAltAndGenotype</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L118" class="blob-line-num js-line-number" data-line-number="118"></td>
        <td id="LC118" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="nv">$ref</span> <span class="o">=</span> <span class="nb">shift</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L119" class="blob-line-num js-line-number" data-line-number="119"></td>
        <td id="LC119" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="nv">$alleles</span> <span class="o">=</span> <span class="nb">shift</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L120" class="blob-line-num js-line-number" data-line-number="120"></td>
        <td id="LC120" class="blob-line-code js-file-line">  <span class="c1">#retrieve alleles from raw data</span></td>
      </tr>
      <tr>
        <td id="L121" class="blob-line-num js-line-number" data-line-number="121"></td>
        <td id="LC121" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="p">(</span><span class="nv">$a</span><span class="p">,</span> <span class="nv">$b</span><span class="p">)</span> <span class="o">=</span> <span class="nb">split</span> <span class="sr">//</span><span class="p">,</span> <span class="nv">$alleles</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L122" class="blob-line-num js-line-number" data-line-number="122"></td>
        <td id="LC122" class="blob-line-code js-file-line">  <span class="k">if</span> <span class="p">(</span><span class="nv">$b</span> <span class="o">!~</span> <span class="sr">m/[A,C,G,T,N,a,c,g,t,n]/</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L123" class="blob-line-num js-line-number" data-line-number="123"></td>
        <td id="LC123" class="blob-line-code js-file-line">    <span class="nv">$b</span> <span class="o">=</span> <span class="nb">undef</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L124" class="blob-line-num js-line-number" data-line-number="124"></td>
        <td id="LC124" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L125" class="blob-line-num js-line-number" data-line-number="125"></td>
        <td id="LC125" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="nv">$alt</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L126" class="blob-line-num js-line-number" data-line-number="126"></td>
        <td id="LC126" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="nv">$lc_ref</span> <span class="o">=</span> <span class="nb">lc</span><span class="p">(</span><span class="nv">$ref</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L127" class="blob-line-num js-line-number" data-line-number="127"></td>
        <td id="LC127" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="nv">$lc_a</span> <span class="o">=</span> <span class="nb">lc</span><span class="p">(</span><span class="nv">$a</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L128" class="blob-line-num js-line-number" data-line-number="128"></td>
        <td id="LC128" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L129" class="blob-line-num js-line-number" data-line-number="129"></td>
        <td id="LC129" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="nv">$genotype</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L130" class="blob-line-num js-line-number" data-line-number="130"></td>
        <td id="LC130" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L131" class="blob-line-num js-line-number" data-line-number="131"></td>
        <td id="LC131" class="blob-line-code js-file-line">  <span class="c1">#determine which of the alleles are alts, if any</span></td>
      </tr>
      <tr>
        <td id="L132" class="blob-line-num js-line-number" data-line-number="132"></td>
        <td id="LC132" class="blob-line-code js-file-line">  <span class="k">if</span> <span class="p">(</span><span class="nv">$a</span> <span class="o">&amp;&amp;</span> <span class="ow">not</span> <span class="nv">$b</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L133" class="blob-line-num js-line-number" data-line-number="133"></td>
        <td id="LC133" class="blob-line-code js-file-line">    <span class="k">if</span> <span class="p">(</span><span class="nv">$lc_a</span> <span class="ow">eq</span> <span class="nv">$lc_ref</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L134" class="blob-line-num js-line-number" data-line-number="134"></td>
        <td id="LC134" class="blob-line-code js-file-line">      <span class="nv">$alt</span> <span class="o">=</span> <span class="s">&quot;.&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L135" class="blob-line-num js-line-number" data-line-number="135"></td>
        <td id="LC135" class="blob-line-code js-file-line">      <span class="nv">$genotype</span> <span class="o">=</span> <span class="s">&quot;0&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L136" class="blob-line-num js-line-number" data-line-number="136"></td>
        <td id="LC136" class="blob-line-code js-file-line">    <span class="p">}</span> <span class="k">else</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L137" class="blob-line-num js-line-number" data-line-number="137"></td>
        <td id="LC137" class="blob-line-code js-file-line">      <span class="nv">$alt</span> <span class="o">=</span> <span class="nv">$a</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L138" class="blob-line-num js-line-number" data-line-number="138"></td>
        <td id="LC138" class="blob-line-code js-file-line">      <span class="nv">$genotype</span> <span class="o">=</span> <span class="s">&quot;1&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L139" class="blob-line-num js-line-number" data-line-number="139"></td>
        <td id="LC139" class="blob-line-code js-file-line">    <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L140" class="blob-line-num js-line-number" data-line-number="140"></td>
        <td id="LC140" class="blob-line-code js-file-line">  <span class="p">}</span> <span class="k">else</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L141" class="blob-line-num js-line-number" data-line-number="141"></td>
        <td id="LC141" class="blob-line-code js-file-line">    <span class="k">my</span> <span class="nv">$lc_b</span> <span class="o">=</span> <span class="nb">lc</span><span class="p">(</span><span class="nv">$b</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L142" class="blob-line-num js-line-number" data-line-number="142"></td>
        <td id="LC142" class="blob-line-code js-file-line">    <span class="k">if</span> <span class="p">(</span><span class="nv">$lc_a</span> <span class="ow">ne</span> <span class="nv">$lc_b</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L143" class="blob-line-num js-line-number" data-line-number="143"></td>
        <td id="LC143" class="blob-line-code js-file-line">      <span class="k">if</span> <span class="p">(</span><span class="nv">$lc_ref</span> <span class="ow">eq</span> <span class="nv">$lc_a</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L144" class="blob-line-num js-line-number" data-line-number="144"></td>
        <td id="LC144" class="blob-line-code js-file-line">        <span class="nv">$alt</span> <span class="o">=</span> <span class="nv">$b</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L145" class="blob-line-num js-line-number" data-line-number="145"></td>
        <td id="LC145" class="blob-line-code js-file-line">        <span class="nv">$genotype</span> <span class="o">=</span> <span class="s">&quot;0/1&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L146" class="blob-line-num js-line-number" data-line-number="146"></td>
        <td id="LC146" class="blob-line-code js-file-line">      <span class="p">}</span> <span class="k">elsif</span> <span class="p">(</span><span class="nv">$lc_ref</span> <span class="ow">eq</span> <span class="nv">$lc_b</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L147" class="blob-line-num js-line-number" data-line-number="147"></td>
        <td id="LC147" class="blob-line-code js-file-line">        <span class="nv">$alt</span> <span class="o">=</span> <span class="nv">$a</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L148" class="blob-line-num js-line-number" data-line-number="148"></td>
        <td id="LC148" class="blob-line-code js-file-line">        <span class="nv">$genotype</span> <span class="o">=</span> <span class="s">&quot;0/1&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L149" class="blob-line-num js-line-number" data-line-number="149"></td>
        <td id="LC149" class="blob-line-code js-file-line">      <span class="p">}</span> <span class="k">else</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L150" class="blob-line-num js-line-number" data-line-number="150"></td>
        <td id="LC150" class="blob-line-code js-file-line">        <span class="nv">$alt</span> <span class="o">=</span> <span class="s">&quot;$a,$b&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L151" class="blob-line-num js-line-number" data-line-number="151"></td>
        <td id="LC151" class="blob-line-code js-file-line">        <span class="nv">$genotype</span> <span class="o">=</span> <span class="s">&quot;1/2&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L152" class="blob-line-num js-line-number" data-line-number="152"></td>
        <td id="LC152" class="blob-line-code js-file-line">      <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L153" class="blob-line-num js-line-number" data-line-number="153"></td>
        <td id="LC153" class="blob-line-code js-file-line">    <span class="p">}</span> <span class="k">else</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L154" class="blob-line-num js-line-number" data-line-number="154"></td>
        <td id="LC154" class="blob-line-code js-file-line">      <span class="k">if</span> <span class="p">(</span><span class="nv">$lc_a</span> <span class="ow">eq</span> <span class="nv">$lc_ref</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L155" class="blob-line-num js-line-number" data-line-number="155"></td>
        <td id="LC155" class="blob-line-code js-file-line">        <span class="nv">$alt</span> <span class="o">=</span> <span class="s">&quot;.&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L156" class="blob-line-num js-line-number" data-line-number="156"></td>
        <td id="LC156" class="blob-line-code js-file-line">        <span class="nv">$genotype</span> <span class="o">=</span> <span class="s">&quot;0/0&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L157" class="blob-line-num js-line-number" data-line-number="157"></td>
        <td id="LC157" class="blob-line-code js-file-line">      <span class="p">}</span> <span class="k">else</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L158" class="blob-line-num js-line-number" data-line-number="158"></td>
        <td id="LC158" class="blob-line-code js-file-line">        <span class="nv">$alt</span> <span class="o">=</span> <span class="s">&quot;$a&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L159" class="blob-line-num js-line-number" data-line-number="159"></td>
        <td id="LC159" class="blob-line-code js-file-line">        <span class="nv">$genotype</span> <span class="o">=</span> <span class="s">&quot;1/1&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L160" class="blob-line-num js-line-number" data-line-number="160"></td>
        <td id="LC160" class="blob-line-code js-file-line">      <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L161" class="blob-line-num js-line-number" data-line-number="161"></td>
        <td id="LC161" class="blob-line-code js-file-line">    <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L162" class="blob-line-num js-line-number" data-line-number="162"></td>
        <td id="LC162" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L163" class="blob-line-num js-line-number" data-line-number="163"></td>
        <td id="LC163" class="blob-line-code js-file-line">  <span class="k">return</span> <span class="nv">$alt</span><span class="p">,</span> <span class="nv">$genotype</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L164" class="blob-line-num js-line-number" data-line-number="164"></td>
        <td id="LC164" class="blob-line-code js-file-line"><span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L165" class="blob-line-num js-line-number" data-line-number="165"></td>
        <td id="LC165" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L166" class="blob-line-num js-line-number" data-line-number="166"></td>
        <td id="LC166" class="blob-line-code js-file-line"><span class="k">sub </span><span class="nf">usage</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L167" class="blob-line-num js-line-number" data-line-number="167"></td>
        <td id="LC167" class="blob-line-code js-file-line">  <span class="k">print</span> <span class="s">&quot;usage:   ./23andme2vcf /path/to/23andme/raw_data.(zip,txt) /path/to/output/file.vcf [23andme chip version, 3|4]\n&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L168" class="blob-line-num js-line-number" data-line-number="168"></td>
        <td id="LC168" class="blob-line-code js-file-line">  <span class="nb">exit</span><span class="p">(</span><span class="mi">1</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L169" class="blob-line-num js-line-number" data-line-number="169"></td>
        <td id="LC169" class="blob-line-code js-file-line"><span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L170" class="blob-line-num js-line-number" data-line-number="170"></td>
        <td id="LC170" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L171" class="blob-line-num js-line-number" data-line-number="171"></td>
        <td id="LC171" class="blob-line-code js-file-line"><span class="k">sub </span><span class="nf">missing</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L172" class="blob-line-num js-line-number" data-line-number="172"></td>
        <td id="LC172" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="nv">$path</span> <span class="o">=</span> <span class="nb">shift</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L173" class="blob-line-num js-line-number" data-line-number="173"></td>
        <td id="LC173" class="blob-line-code js-file-line">  <span class="k">print</span> <span class="s">&quot;Could not locate a file at: $path\n&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L174" class="blob-line-num js-line-number" data-line-number="174"></td>
        <td id="LC174" class="blob-line-code js-file-line">  <span class="n">usage</span><span class="p">();</span></td>
      </tr>
      <tr>
        <td id="L175" class="blob-line-num js-line-number" data-line-number="175"></td>
        <td id="LC175" class="blob-line-code js-file-line"><span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L176" class="blob-line-num js-line-number" data-line-number="176"></td>
        <td id="LC176" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L177" class="blob-line-num js-line-number" data-line-number="177"></td>
        <td id="LC177" class="blob-line-code js-file-line"><span class="k">sub </span><span class="nf">missing_sites</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L178" class="blob-line-num js-line-number" data-line-number="178"></td>
        <td id="LC178" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="nv">$rsid</span> <span class="o">=</span> <span class="nb">shift</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L179" class="blob-line-num js-line-number" data-line-number="179"></td>
        <td id="LC179" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="nv">$chr</span> <span class="o">=</span> <span class="nb">shift</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L180" class="blob-line-num js-line-number" data-line-number="180"></td>
        <td id="LC180" class="blob-line-code js-file-line">  <span class="k">my</span> <span class="nv">$pos</span> <span class="o">=</span> <span class="nb">shift</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L181" class="blob-line-num js-line-number" data-line-number="181"></td>
        <td id="LC181" class="blob-line-code js-file-line">  <span class="k">if</span> <span class="p">(</span><span class="nv">$missing_ref_fh</span> <span class="o">==</span> <span class="o">-</span><span class="mi">1</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L182" class="blob-line-num js-line-number" data-line-number="182"></td>
        <td id="LC182" class="blob-line-code js-file-line">    <span class="nv">$missing_ref_fh</span> <span class="o">=</span> <span class="nn">IO::</span><span class="n">File</span><span class="o">-&gt;</span><span class="k">new</span><span class="p">(</span><span class="s">&quot;&gt;$missing_ref_path&quot;</span><span class="p">);</span></td>
      </tr>
      <tr>
        <td id="L183" class="blob-line-num js-line-number" data-line-number="183"></td>
        <td id="LC183" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L184" class="blob-line-num js-line-number" data-line-number="184"></td>
        <td id="LC184" class="blob-line-code js-file-line">  <span class="k">print</span> <span class="nv">$missing_ref_fh</span> <span class="s">&quot;$rsid\t$chr\t$pos\n&quot;</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L185" class="blob-line-num js-line-number" data-line-number="185"></td>
        <td id="LC185" class="blob-line-code js-file-line">  <span class="nv">$skip_count</span><span class="o">++</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L186" class="blob-line-num js-line-number" data-line-number="186"></td>
        <td id="LC186" class="blob-line-code js-file-line"><span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L187" class="blob-line-num js-line-number" data-line-number="187"></td>
        <td id="LC187" class="blob-line-code js-file-line">
</td>
      </tr>
      <tr>
        <td id="L188" class="blob-line-num js-line-number" data-line-number="188"></td>
        <td id="LC188" class="blob-line-code js-file-line"><span class="k">sub </span><span class="nf">skips</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L189" class="blob-line-num js-line-number" data-line-number="189"></td>
        <td id="LC189" class="blob-line-code js-file-line">  <span class="k">if</span> <span class="p">(</span><span class="nv">$skip_count</span><span class="p">)</span> <span class="p">{</span></td>
      </tr>
      <tr>
        <td id="L190" class="blob-line-num js-line-number" data-line-number="190"></td>
        <td id="LC190" class="blob-line-code js-file-line">    <span class="k">my</span> <span class="nv">$other_version</span> <span class="o">=</span> <span class="p">(</span><span class="nv">$version</span> <span class="o">==</span> <span class="mi">3</span><span class="p">)</span> <span class="p">?</span> <span class="mi">4</span> <span class="p">:</span> <span class="mi">3</span><span class="p">;</span></td>
      </tr>
      <tr>
        <td id="L191" class="blob-line-num js-line-number" data-line-number="191"></td>
        <td id="LC191" class="blob-line-code js-file-line">    <span class="k">print</span> <span class="s">&quot;$skip_count sites were not included. Try running again, but specify the other reference version:\n&quot;</span><span class="o">.</span></td>
      </tr>
      <tr>
        <td id="L192" class="blob-line-num js-line-number" data-line-number="192"></td>
        <td id="LC192" class="blob-line-code js-file-line">    <span class="s">&quot;./23andme2vcf.pl $ARGV[0] $ARGV[1] $other_version\n&quot;</span></td>
      </tr>
      <tr>
        <td id="L193" class="blob-line-num js-line-number" data-line-number="193"></td>
        <td id="LC193" class="blob-line-code js-file-line">  <span class="p">}</span></td>
      </tr>
      <tr>
        <td id="L194" class="blob-line-num js-line-number" data-line-number="194"></td>
        <td id="LC194" class="blob-line-code js-file-line"><span class="p">}</span></td>
      </tr>
</table>

  </div>

  </div>
</div>

<a href="#jump-to-line" rel="facebox[.linejump]" data-hotkey="l" style="display:none">Jump to Line</a>
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

    <a href="/" aria-label="Homepage">
      <span class="mega-octicon octicon-mark-github" title="GitHub"></span>
    </a>

    <ul class="site-footer-links">
      <li>&copy; 2014 <span title="0.03495s from github-fe116-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="/site/terms">Terms</a></li>
        <li><a href="/site/privacy">Privacy</a></li>
        <li><a href="/security">Security</a></li>
        <li><a href="/contact">Contact</a></li>
    </ul>
  </div><!-- /.site-footer -->
</div><!-- /.container -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-suggester-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="fullscreen-contents js-fullscreen-contents js-suggester-field" placeholder=""></textarea>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped tooltipped-w" aria-label="Exit Zen Mode">
      <span class="mega-octicon octicon-screen-normal"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped tooltipped-w"
      aria-label="Switch themes">
      <span class="octicon octicon-color-mode"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="octicon octicon-alert"></span>
      <a href="#" class="octicon octicon-x close js-ajax-error-dismiss" aria-label="Dismiss error"></a>
      Something went wrong with that request. Please try again.
    </div>


      <script crossorigin="anonymous" src="https://assets-cdn.github.com/assets/frameworks-2b4202fc62ef88e1a007a9ed05df10607b189f42.js" type="text/javascript"></script>
      <script async="async" crossorigin="anonymous" src="https://assets-cdn.github.com/assets/github-02254d0789a651aa039fc391e44ef36c1e2e1a9a.js" type="text/javascript"></script>
      
      
        <script async src="https://www.google-analytics.com/analytics.js"></script>
  </body>
</html>

