.class public abstract Lcom/actionbarsherlock/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/app/ActionBar$LayoutParams;,
        Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;,
        Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;,
        Lcom/actionbarsherlock/app/ActionBar$Tab;,
        Lcom/actionbarsherlock/app/ActionBar$TabListener;
    }
.end annotation


# static fields
.field public static final DISPLAY_HOME_AS_UP:I = 0x4

.field public static final DISPLAY_SHOW_CUSTOM:I = 0x10

.field public static final DISPLAY_SHOW_HOME:I = 0x2

.field public static final DISPLAY_SHOW_TITLE:I = 0x8

.field public static final DISPLAY_USE_LOGO:I = 0x1

.field public static final NAVIGATION_MODE_LIST:I = 0x1

.field public static final NAVIGATION_MODE_STANDARD:I = 0x0

.field public static final NAVIGATION_MODE_TABS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addOnMenuVisibilityListener(Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
.end method

.method public abstract addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;I)V
.end method

.method public abstract addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;IZ)V
.end method

.method public abstract addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;Z)V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getDisplayOptions()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getNavigationItemCount()I
.end method

.method public abstract getNavigationMode()I
.end method

.method public abstract getSelectedNavigationIndex()I
.end method

.method public abstract getSelectedTab()Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getTabAt(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method

.method public abstract getTabCount()I
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract hide()V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method

.method public abstract removeAllTabs()V
.end method

.method public abstract removeOnMenuVisibilityListener(Lcom/actionbarsherlock/app/ActionBar$OnMenuVisibilityListener;)V
.end method

.method public abstract removeTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
.end method

.method public abstract removeTabAt(I)V
.end method

.method public abstract selectTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setCustomView(I)V
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setCustomView(Landroid/view/View;Lcom/actionbarsherlock/app/ActionBar$LayoutParams;)V
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayOptions(I)V
.end method

.method public abstract setDisplayOptions(II)V
.end method

.method public abstract setDisplayShowCustomEnabled(Z)V
.end method

.method public abstract setDisplayShowHomeEnabled(Z)V
.end method

.method public abstract setDisplayShowTitleEnabled(Z)V
.end method

.method public abstract setDisplayUseLogoEnabled(Z)V
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 659
    return-void
.end method

.method public abstract setIcon(I)V
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Lcom/actionbarsherlock/app/ActionBar$OnNavigationListener;)V
.end method

.method public abstract setLogo(I)V
.end method

.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setNavigationMode(I)V
.end method

.method public abstract setSelectedNavigationItem(I)V
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 446
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 436
    return-void
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract show()V
.end method
