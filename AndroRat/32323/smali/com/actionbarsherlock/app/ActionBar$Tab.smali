.class public abstract Lcom/actionbarsherlock/app/ActionBar$Tab;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContentDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getPosition()I
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getText()Ljava/lang/CharSequence;
.end method

.method public abstract select()V
.end method

.method public abstract setContentDescription(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method

.method public abstract setContentDescription(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method

.method public abstract setCustomView(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method

.method public abstract setCustomView(Landroid/view/View;)Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method

.method public abstract setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method

.method public abstract setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method

.method public abstract setTag(Ljava/lang/Object;)Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method

.method public abstract setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method

.method public abstract setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;
.end method
