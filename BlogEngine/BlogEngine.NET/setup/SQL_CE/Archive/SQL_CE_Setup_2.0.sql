
CREATE TABLE [be_BlogRollItems] (
  [BlogRollId] uniqueidentifier NOT NULL
, [Title] nvarchar(255) NOT NULL DEFAULT ''
, [Description] nvarchar(255) NULL DEFAULT ''
, [BlogUrl] nvarchar(255) NOT NULL DEFAULT ''
, [FeedUrl] nvarchar(255) NULL DEFAULT ''
, [Xfn] nvarchar(255) NULL DEFAULT ''
, [SortIndex] int NOT NULL
);
GO
CREATE TABLE [be_Categories] (
  [CategoryID] uniqueidentifier NOT NULL DEFAULT newid()
, [CategoryName] nvarchar(50) NULL DEFAULT ''
, [Description] nvarchar(200) NULL DEFAULT ''
, [ParentID] uniqueidentifier NULL
);
GO
CREATE TABLE [be_DataStoreSettings] (
  [ExtensionType] nvarchar(50) NOT NULL DEFAULT ''
, [ExtensionId] nvarchar(100) NOT NULL DEFAULT ''
, [Settings] ntext NOT NULL DEFAULT ''
);
GO
CREATE TABLE [be_Pages] (
  [PageID] uniqueidentifier NOT NULL DEFAULT newid()
, [Title] nvarchar(255) NULL DEFAULT ''
, [Description] ntext NULL DEFAULT ''
, [PageContent] ntext NULL DEFAULT ''
, [Keywords] ntext NULL DEFAULT ''
, [DateCreated] datetime NULL
, [DateModified] datetime NULL
, [IsPublished] bit NULL
, [IsFrontPage] bit NULL
, [Parent] uniqueidentifier NULL
, [ShowInList] bit NULL
, [Slug] nvarchar(255) NULL DEFAULT ''
, [IsDeleted] bit NOT NULL DEFAULT 0
);
GO
CREATE TABLE [be_PingService] (
  [PingServiceID] int NOT NULL  IDENTITY (9,1)
, [Link] nvarchar(255) NULL DEFAULT ''
);
GO
CREATE TABLE [be_PostCategory] (
  [PostCategoryID] int NOT NULL  IDENTITY (2,1)
, [PostID] uniqueidentifier NOT NULL
, [CategoryID] uniqueidentifier NOT NULL
);
GO
CREATE TABLE [be_PostComment] (
  [PostCommentID] uniqueidentifier NOT NULL DEFAULT newid()
, [PostID] uniqueidentifier NOT NULL
, [ParentCommentID] uniqueidentifier NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000'
, [CommentDate] datetime NOT NULL
, [Author] nvarchar(255) NULL DEFAULT ''
, [Email] nvarchar(255) NULL DEFAULT ''
, [Website] nvarchar(255) NULL DEFAULT ''
, [Comment] ntext NULL DEFAULT ''
, [Country] nvarchar(255) NULL DEFAULT ''
, [Ip] nvarchar(50) NULL DEFAULT ''
, [IsApproved] bit NULL
, [ModeratedBy] nvarchar(100) NULL DEFAULT ''
, [Avatar] nvarchar(255) NULL DEFAULT ''
, [IsSpam] bit NOT NULL DEFAULT 0
, [IsDeleted] bit NOT NULL DEFAULT 0
);
GO
CREATE TABLE [be_PostNotify] (
  [PostNotifyID] int NOT NULL  IDENTITY (1,1)
, [PostID] uniqueidentifier NOT NULL
, [NotifyAddress] nvarchar(255) NULL DEFAULT ''
);
GO
CREATE TABLE [be_Posts] (
  [PostID] uniqueidentifier NOT NULL DEFAULT newid()
, [Title] nvarchar(255) NULL DEFAULT ''
, [Description] ntext NULL DEFAULT ''
, [PostContent] ntext NULL DEFAULT ''
, [DateCreated] datetime NULL
, [DateModified] datetime NULL
, [Author] nvarchar(50) NULL DEFAULT ''
, [IsPublished] bit NULL
, [IsCommentEnabled] bit NULL
, [Raters] int NULL
, [Rating] real NULL
, [Slug] nvarchar(255) NULL DEFAULT ''
, [IsDeleted] bit NOT NULL DEFAULT 0
);
GO
CREATE TABLE [be_PostTag] (
  [PostTagID] int NOT NULL  IDENTITY (3,1)
, [PostID] uniqueidentifier NOT NULL
, [Tag] nvarchar(50) NULL DEFAULT ''
);
GO
CREATE TABLE [be_Profiles] (
  [ProfileID] int NOT NULL  IDENTITY (1,1)
, [UserName] nvarchar(100) NULL DEFAULT ''
, [SettingName] nvarchar(200) NULL DEFAULT ''
, [SettingValue] ntext NULL DEFAULT ''
);
GO
CREATE TABLE [be_Referrers] (
  [ReferrerId] uniqueidentifier NOT NULL
, [ReferralDay] datetime NOT NULL DEFAULT getdate()
, [ReferrerUrl] nvarchar(255) NOT NULL DEFAULT ''
, [ReferralCount] int NOT NULL
, [Url] nvarchar(255) NULL DEFAULT ''
, [IsSpam] bit NULL
);
GO
CREATE TABLE [be_RightRoles] (
  [RightName] nvarchar(100) NOT NULL DEFAULT ''
, [Role] nvarchar(100) NOT NULL DEFAULT ''
);
GO
CREATE TABLE [be_Rights] (
  [RightName] nvarchar(100) NOT NULL DEFAULT ''
);
GO
CREATE TABLE [be_Roles] (
  [RoleID] int NOT NULL  IDENTITY (3,1)
, [Role] nvarchar(100) NOT NULL DEFAULT ''
);
GO
CREATE TABLE [be_Settings] (
  [SettingName] nvarchar(50) NOT NULL DEFAULT ''
, [SettingValue] ntext NULL DEFAULT ''
);
GO
CREATE TABLE [be_StopWords] (
  [StopWord] nvarchar(50) NOT NULL DEFAULT ''
);
GO
CREATE TABLE [be_UserRoles] (
  [UserRoleID] int NOT NULL  IDENTITY (2,1)
, [UserID] int NOT NULL
, [RoleID] int NOT NULL
);
GO
CREATE TABLE [be_Users] (
  [UserID] int NOT NULL  IDENTITY (2,1)
, [UserName] nvarchar(100) NOT NULL DEFAULT ''
, [Password] nvarchar(255) NOT NULL DEFAULT ''
, [LastLoginTime] datetime NULL
, [EmailAddress] nvarchar(100) NULL DEFAULT ''
);
GO
INSERT INTO [be_BlogRollItems] ([BlogRollId],[Title],[Description],[BlogUrl],[FeedUrl],[Xfn],[SortIndex]) VALUES ('25e4d8da-3278-4e58-b0bf-932496dabc96',N'Mads Kristensen',N'Full featured simplicity in ASP.NET and C#',N'http://madskristensen.net',N'http://feeds.feedburner.com/netslave',N'contact',0);
GO
INSERT INTO [be_BlogRollItems] ([BlogRollId],[Title],[Description],[BlogUrl],[FeedUrl],[Xfn],[SortIndex]) VALUES ('ccc817ef-e760-482b-b82f-a6854663110f',N'Al Nyveldt',N'Adventures in Code and Other Stories',N'http://www.nyveldt.com/blog/',N'http://feeds.feedburner.com/razorant',N'contact',1);
GO
INSERT INTO [be_BlogRollItems] ([BlogRollId],[Title],[Description],[BlogUrl],[FeedUrl],[Xfn],[SortIndex]) VALUES ('dcdaa78b-0b77-4691-99f0-1bb6418945a1',N'Ruslan Tur',N'.NET and Open Source: better together',N'http://rtur.net/blog/',N'http://feeds.feedburner.com/rtur',N'contact',2);
GO
INSERT INTO [be_BlogRollItems] ([BlogRollId],[Title],[Description],[BlogUrl],[FeedUrl],[Xfn],[SortIndex]) VALUES ('8a846489-b69e-4fde-b2b2-53bc6104a6fa',N'John Dyer',N'Technology and web development in ASP.NET, Flash, and JavaScript',N'http://johndyer.name/',N'http://johndyer.name/syndication.axd',N'contact',3);
GO
INSERT INTO [be_BlogRollItems] ([BlogRollId],[Title],[Description],[BlogUrl],[FeedUrl],[Xfn],[SortIndex]) VALUES ('7f906880-4316-47f1-a934-1a912fc02f8b',N'Russell van der Walt',N'an adventure in web technologies',N'http://blog.ruski.co.za/',N'http://feeds.feedburner.com/rusvdw',N'contact',4);
GO
INSERT INTO [be_BlogRollItems] ([BlogRollId],[Title],[Description],[BlogUrl],[FeedUrl],[Xfn],[SortIndex]) VALUES ('890f00e5-3a86-4cba-b85b-104063964a87',N'Ben Amada',N'adventures in application development',N'http://allben.net/',N'http://feeds.feedburner.com/allben',N'contact',5);
GO
INSERT INTO [be_Categories] ([CategoryID],[CategoryName],[Description],[ParentID]) VALUES ('05366547-5c8e-4643-ad94-377d3f809ab8',N'General',N'',null);
GO
INSERT INTO [be_DataStoreSettings] ([ExtensionType],[ExtensionId],[Settings]) VALUES (N'1',N'be_WIDGET_ZONE',N'<?xml version="1.0" encoding="utf-16"?>
<WidgetData xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <Settings>&lt;widgets&gt;&lt;widget id="d9ada63d-3462-4c72-908e-9d35f0acce40" title="TextBox" showTitle="True"&gt;TextBox&lt;/widget&gt;&lt;widget id="19baa5f6-49d4-4828-8f7f-018535c35f94" title="Administration" showTitle="True"&gt;Administration&lt;/widget&gt;&lt;widget id="d81c5ae3-e57e-4374-a539-5cdee45e639f" title="Search" showTitle="True"&gt;Search&lt;/widget&gt;&lt;widget id="77142800-6dff-4016-99ca-69b5c5ebac93" title="Tag cloud" showTitle="True"&gt;Tag cloud&lt;/widget&gt;&lt;widget id="4ce68ae7-c0c8-4bf8-b50f-a67b582b0d2e" title="RecentPosts" showTitle="True"&gt;RecentPosts&lt;/widget&gt;&lt;/widgets&gt;</Settings>
</WidgetData>');
GO
SET IDENTITY_INSERT [be_PingService] ON;
GO
INSERT INTO [be_PingService] ([PingServiceID],[Link]) VALUES (1,N'http://rpc.technorati.com/rpc/ping');
GO
INSERT INTO [be_PingService] ([PingServiceID],[Link]) VALUES (2,N'http://rpc.pingomatic.com/rpc2');
GO
INSERT INTO [be_PingService] ([PingServiceID],[Link]) VALUES (3,N'http://ping.feedburner.com');
GO
INSERT INTO [be_PingService] ([PingServiceID],[Link]) VALUES (4,N'http://www.bloglines.com/ping');
GO
INSERT INTO [be_PingService] ([PingServiceID],[Link]) VALUES (5,N'http://services.newsgator.com/ngws/xmlrpcping.aspx');
GO
INSERT INTO [be_PingService] ([PingServiceID],[Link]) VALUES (6,N'http://api.my.yahoo.com/rpc2 ');
GO
INSERT INTO [be_PingService] ([PingServiceID],[Link]) VALUES (7,N'http://blogsearch.google.com/ping/RPC2');
GO
INSERT INTO [be_PingService] ([PingServiceID],[Link]) VALUES (8,N'http://rpc.pingthesemanticweb.com/');
GO
SET IDENTITY_INSERT [be_PingService] OFF;
GO
SET IDENTITY_INSERT [be_PostCategory] ON;
GO
INSERT INTO [be_PostCategory] ([PostCategoryID],[PostID],[CategoryID]) VALUES (1,'10ecdf6f-2cf7-447c-8ff7-223833550716','05366547-5c8e-4643-ad94-377d3f809ab8');
GO
SET IDENTITY_INSERT [be_PostCategory] OFF;
GO
INSERT INTO [be_Posts] ([PostID],[Title],[Description],[PostContent],[DateCreated],[DateModified],[Author],[IsPublished],[IsCommentEnabled],[Raters],[Rating],[Slug],[IsDeleted]) VALUES ('10ecdf6f-2cf7-447c-8ff7-223833550716',N'Welcome to BlogEngine.NET 2.0 using Microsoft SQL CE',N'The description is used as the meta description as well as shown in the related posts. It is recommended that you write a description, but not mandatory',N'<p>If you see this post it means that BlogEngine.NET 2.0 is running and the hard part of creating your own blog is done. There is only a few things left to do.</p>
<h2>Write Permissions</h2>
<p>To be able to log in to the blog and writing posts, you need to enable write permissions on the App_Data folder. If you&rsquo;re blog is hosted at a hosting provider, you can either log into your account&rsquo;s admin page or call the support. You need write permissions on the App_Data folder because all posts, comments, and blog attachments are saved as XML files and placed in the App_Data folder.&nbsp;</p>
<p>If you wish to use a database to to store your blog data, we still encourage you to enable this write access for an images you may wish to store for your blog posts.&nbsp; If you are interested in using Microsoft SQL Server, MySQL, SQL CE, or other databases, please see the <a href="http://blogengine.codeplex.com/documentation">BlogEngine wiki</a> to get started.</p>
<h2>Security</h2>
<p>When you''ve got write permissions to the App_Data folder, you need to change the username and password. Find the sign-in link located either at the bottom or top of the page depending on your current theme and click it. Now enter "admin" in both the username and password fields and click the button. You will now see an admin menu appear. It has a link to the "Users" admin page. From there you can change the username and password.&nbsp; Passwords are hashed by default so if you lose your password, please see the <a href="http://blogengine.codeplex.com/documentation">BlogEngine wiki</a> for information on recovery.</p>
<h2>Configuration and Profile</h2>
<p>Now that you have your blog secured, take a look through the settings and give your new blog a title.&nbsp; BlogEngine.NET 1.4 is set up to take full advantage of of many semantic formats and technologies such as FOAF, SIOC and APML. It means that the content stored in your BlogEngine.NET installation will be fully portable and auto-discoverable.&nbsp; Be sure to fill in your author profile to take better advantage of this.</p>
<h2>Themes and Widgets</h2>
<p>One last thing to consider is customizing the look of your blog.&nbsp; We have a few themes available right out of the box including two fully setup to use our new widget framework.&nbsp; The widget framework allows drop and drag placement on your side bar as well as editing and configuration right in the widget while you are logged in.&nbsp; Be sure to check out <a href="http://dotnetblogengine.net">our home page</a> for more theme choices and downloadable widgets to add to your blog.</p>
<h2>Try Out New Features</h2>
<p>BlogEngine now supports code syntax highlighting and HTML5 video out of the box. To add a video, click the "Insert video" button just above the post editor. Once your video is uploaded, use the following syntax to show it: [&shy;video src="be-sample.mp4"]. Make sure to add "video/mp4" as a MIME type to your IIS.</p>
<p>[video src="http://dotnetblogengine.net/media/blogengine-welcome.mp4" type="video/mp4" width="600" height="480"]</p>
<p>You can add formatted code by pressing the "Insert Code" button on the post editor toolbar. Here is a small sample:</p>
<pre class="brush: c-sharp;">// Hello1.cs
public class Hello1
{
   public static void Main()
   {
      System.Console.WriteLine("Hello, World!");
   }
}</pre>
<p>&nbsp;</p>
<h2>On the web</h2>
<p>You can find BlogEngine.NET on the <a href="http://www.dotnetblogengine.net">official website</a>. Here you''ll find tutorials, documentation, tips and tricks and much more. The ongoing development of BlogEngine.NET can be followed at <a href="http://blogengine.codeplex.com/">CodePlex</a> where the daily builds will be published for anyone to download.</p>
<p>Good luck and happy writing.</p>
<p>The BlogEngine.NET team</p>',{ts '2010-11-13 17:00:00.000'},null,N'admin',1,1,null,null,N'',0);
GO
SET IDENTITY_INSERT [be_PostTag] ON;
GO
INSERT INTO [be_PostTag] ([PostTagID],[PostID],[Tag]) VALUES (1,'10ecdf6f-2cf7-447c-8ff7-223833550716',N'blog');
GO
INSERT INTO [be_PostTag] ([PostTagID],[PostID],[Tag]) VALUES (2,'10ecdf6f-2cf7-447c-8ff7-223833550716',N'welcome');
GO
SET IDENTITY_INSERT [be_PostTag] OFF;
GO
SET IDENTITY_INSERT [be_Roles] ON;
GO
INSERT INTO [be_Roles] ([RoleID],[Role]) VALUES (1,N'Administrators');
GO
INSERT INTO [be_Roles] ([RoleID],[Role]) VALUES (2,N'Editors');
GO
SET IDENTITY_INSERT [be_Roles] OFF;
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'administratorrole',N'Administrators');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'alternatefeedurl',N'');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'authorname',N'My name');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'avatar',N'combine');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'blogrollmaxlength',N'23');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'blogrollupdateminutes',N'60');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'blogrollvisibleposts',N'3');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'contactformmessage',N'<p>I will answer the mail as soon as I can.</p>');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'contactthankmessage',N'<h1>Thank you</h1><p>The message was sent.</p>');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'culture',N'Auto');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'dayscommentsareenabled',N'0');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'description',N'Short description of the blog');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'displaycommentsonrecentposts',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'displayratingsonrecentposts',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'email',N'user@example.com');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'emailsubjectprefix',N'Weblog');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enablecommentsearch',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enablecommentsmoderation',N'False');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enablecontactattachments',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enablecountryincomments',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enablehttpcompression',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enableopensearch',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enablepingbackreceive',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enablepingbacksend',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enablerating',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enablereferrertracking',N'False');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enablerelatedposts',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enablessl',N'False');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enabletrackbackreceive',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'enabletrackbacksend',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'endorsement',N'http://www.dotnetblogengine.net/syndication.axd');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'fileextension',N'.aspx');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'geocodinglatitude',N'0');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'geocodinglongitude',N'0');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'handlewwwsubdomain',N'');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'iscocommentenabled',N'False');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'iscommentsenabled',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'language',N'en-GB');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'mobiletheme',N'Mobile');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'name',N'Name of the blog');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'numberofrecentcomments',N'10');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'numberofrecentposts',N'10');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'postsperfeed',N'10');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'postsperpage',N'10');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'removewhitespaceinstylesheets',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'searchbuttontext',N'Search');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'searchcommentlabeltext',N'Include comments in search');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'searchdefaulttext',N'Enter search term');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'sendmailoncomment',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'showdescriptioninpostlist',N'False');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'showlivepreview',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'showpostnavigation',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'smtppassword',N'password');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'smtpserver',N'mail.example.dk');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'smtpserverport',N'25');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'smtpusername',N'user@example.com');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'storagelocation',N'~/App_Data/');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'syndicationformat',N'Rss');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'theme',N'Standard');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'timestamppostlinks',N'True');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'timezone',N'-5');
GO
INSERT INTO [be_Settings] ([SettingName],[SettingValue]) VALUES (N'trackingscript',N'');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'a');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'about');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'actually');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'add');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'after');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'all');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'almost');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'along');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'also');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'an');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'and');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'any');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'are');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'as');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'at');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'be');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'both');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'but');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'by');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'can');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'cannot');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'com');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'could');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'de');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'do');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'down');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'each');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'either');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'en');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'for');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'from');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'good');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'has');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'have');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'he');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'her');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'here');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'hers');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'his');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'how');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'i');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'if');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'in');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'into');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'is');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'it');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'its');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'just');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'la');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'like');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'long');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'make');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'me');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'more');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'much');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'my');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'need');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'new');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'now');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'of');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'off');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'on');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'once');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'one');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'ones');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'only');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'or');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'our');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'out');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'over');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'own');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'really');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'right');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'same');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'see');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'she');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'so');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'some');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'such');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'take');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'takes');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'that');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'the');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'their');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'these');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'thing');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'this');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'to');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'too');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'took');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'und');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'up');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'use');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'used');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'using');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'very');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'was');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'we');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'well');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'what');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'when');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'where');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'who');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'will');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'with');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'www');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'you');
GO
INSERT INTO [be_StopWords] ([StopWord]) VALUES (N'your');
GO
SET IDENTITY_INSERT [be_UserRoles] ON;
GO
INSERT INTO [be_UserRoles] ([UserRoleID],[UserID],[RoleID]) VALUES (1,1,1);
GO
SET IDENTITY_INSERT [be_UserRoles] OFF;
GO
SET IDENTITY_INSERT [be_Users] ON;
GO
INSERT INTO [be_Users] ([UserID],[UserName],[Password],[LastLoginTime],[EmailAddress]) VALUES (1,N'Admin',N'',{ts '2010-10-11 17:44:31.990'},N'email@example.com');
GO
SET IDENTITY_INSERT [be_Users] OFF;
GO
ALTER TABLE [be_BlogRollItems] ADD CONSTRAINT [PK_be_BlogRollItems_BlogRollId] PRIMARY KEY ([BlogRollId]);
GO
ALTER TABLE [be_Categories] ADD CONSTRAINT [PK_be_Categories_CategoryID] PRIMARY KEY ([CategoryID]);
GO
ALTER TABLE [be_Pages] ADD CONSTRAINT [PK_be_Pages_PageID] PRIMARY KEY ([PageID]);
GO
ALTER TABLE [be_PingService] ADD CONSTRAINT [PK_be_PingService_PingServiceID] PRIMARY KEY ([PingServiceID]);
GO
ALTER TABLE [be_PostCategory] ADD CONSTRAINT [PK_be_PostCategory_PostCategoryID] PRIMARY KEY ([PostCategoryID]);
GO
ALTER TABLE [be_PostComment] ADD CONSTRAINT [PK_be_PostComment_PostCommentID] PRIMARY KEY ([PostCommentID]);
GO
ALTER TABLE [be_PostNotify] ADD CONSTRAINT [PK_be_PostNotify_PostNotifyID] PRIMARY KEY ([PostNotifyID]);
GO
ALTER TABLE [be_Posts] ADD CONSTRAINT [PK_be_Posts_PostID] PRIMARY KEY ([PostID]);
GO
ALTER TABLE [be_PostTag] ADD CONSTRAINT [PK_be_PostTag_PostTagID] PRIMARY KEY ([PostTagID]);
GO
ALTER TABLE [be_Profiles] ADD CONSTRAINT [PK_be_Profiles_ProfileID] PRIMARY KEY ([ProfileID]);
GO
ALTER TABLE [be_Referrers] ADD CONSTRAINT [PK_be_Referrers_ReferrerId] PRIMARY KEY ([ReferrerId]);
GO
ALTER TABLE [be_RightRoles] ADD CONSTRAINT [PK_be_RightRoles_RightName_Role] PRIMARY KEY ([RightName],[Role]);
GO
ALTER TABLE [be_Rights] ADD CONSTRAINT [PK_be_Rights_RightName] PRIMARY KEY ([RightName]);
GO
ALTER TABLE [be_Roles] ADD CONSTRAINT [PK_be_Roles_RoleID] PRIMARY KEY ([RoleID]);
GO
ALTER TABLE [be_Settings] ADD CONSTRAINT [PK_be_Settings_SettingName] PRIMARY KEY ([SettingName]);
GO
ALTER TABLE [be_StopWords] ADD CONSTRAINT [PK_be_StopWords_StopWord] PRIMARY KEY ([StopWord]);
GO
ALTER TABLE [be_UserRoles] ADD CONSTRAINT [PK_be_UserRoles_UserRoleID] PRIMARY KEY ([UserRoleID]);
GO
ALTER TABLE [be_Users] ADD CONSTRAINT [PK_be_Users_UserID] PRIMARY KEY ([UserID]);
GO
CREATE INDEX [I_TypeID] ON [be_DataStoreSettings] ([ExtensionType] ASC,[ExtensionId] ASC);
GO
CREATE INDEX [FK_CategoryID] ON [be_PostCategory] ([CategoryID] ASC);
GO
CREATE INDEX [FK_PostID] ON [be_PostCategory] ([PostID] ASC);
GO
CREATE INDEX [FK_PostID] ON [be_PostComment] ([PostID] ASC);
GO
CREATE INDEX [FK_PostID] ON [be_PostNotify] ([PostID] ASC);
GO
CREATE INDEX [FK_PostID] ON [be_PostTag] ([PostID] ASC);
GO
CREATE INDEX [I_UserName] ON [be_Profiles] ([UserName] ASC);
GO
ALTER TABLE [be_PostCategory] ADD CONSTRAINT [FK_be_PostCategory_be_Categories] FOREIGN KEY ([CategoryID]) REFERENCES [be_Categories]([CategoryID]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [be_PostCategory] ADD CONSTRAINT [FK_be_PostCategory_be_Posts] FOREIGN KEY ([PostID]) REFERENCES [be_Posts]([PostID]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [be_PostComment] ADD CONSTRAINT [FK_be_PostComment_be_Posts] FOREIGN KEY ([PostID]) REFERENCES [be_Posts]([PostID]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [be_PostNotify] ADD CONSTRAINT [FK_be_PostNotify_be_Posts] FOREIGN KEY ([PostID]) REFERENCES [be_Posts]([PostID]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [be_PostTag] ADD CONSTRAINT [FK_be_PostTag_be_Posts] FOREIGN KEY ([PostID]) REFERENCES [be_Posts]([PostID]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [be_UserRoles] ADD CONSTRAINT [FK_be_UserRoles_be_Roles] FOREIGN KEY ([RoleID]) REFERENCES [be_Roles]([RoleID]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO
ALTER TABLE [be_UserRoles] ADD CONSTRAINT [FK_be_UserRoles_be_Users] FOREIGN KEY ([UserID]) REFERENCES [be_Users]([UserID]) ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

