.class public interface abstract Lcom/actionbarsherlock/app/ActionBar$TabListener;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabListener"
.end annotation


# virtual methods
.method public abstract onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
.end method

.method public abstract onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
.end method

.method public abstract onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
.end method
