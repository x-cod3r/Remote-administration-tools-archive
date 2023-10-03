.class public interface abstract Lcom/actionbarsherlock/view/MenuItem;
.super Ljava/lang/Object;
.source "MenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;,
        Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4


# virtual methods
.method public abstract collapseActionView()Z
.end method

.method public abstract expandActionView()Z
.end method

.method public abstract getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;
.end method

.method public abstract getActionView()Landroid/view/View;
.end method

.method public abstract getAlphabeticShortcut()C
.end method

.method public abstract getGroupId()I
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIntent()Landroid/content/Intent;
.end method

.method public abstract getItemId()I
.end method

.method public abstract getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
.end method

.method public abstract getNumericShortcut()C
.end method

.method public abstract getOrder()I
.end method

.method public abstract getSubMenu()Lcom/actionbarsherlock/view/SubMenu;
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract getTitleCondensed()Ljava/lang/CharSequence;
.end method

.method public abstract hasSubMenu()Z
.end method

.method public abstract isActionViewExpanded()Z
.end method

.method public abstract isCheckable()Z
.end method

.method public abstract isChecked()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract setActionProvider(Lcom/actionbarsherlock/view/ActionProvider;)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setActionView(I)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setAlphabeticShortcut(C)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setCheckable(Z)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setChecked(Z)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setEnabled(Z)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setIcon(I)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setIntent(Landroid/content/Intent;)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setNumericShortcut(C)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setShortcut(CC)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setShowAsAction(I)V
.end method

.method public abstract setShowAsActionFlags(I)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setTitle(I)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setTitleCondensed(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/view/MenuItem;
.end method

.method public abstract setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;
.end method
