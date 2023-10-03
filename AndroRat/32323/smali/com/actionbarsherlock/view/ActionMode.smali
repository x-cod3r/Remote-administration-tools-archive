.class public abstract Lcom/actionbarsherlock/view/ActionMode;
.super Ljava/lang/Object;
.source "ActionMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/view/ActionMode$Callback;
    }
.end annotation


# instance fields
.field private mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract finish()V
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getMenu()Lcom/actionbarsherlock/view/Menu;
.end method

.method public abstract getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;
.end method

.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/actionbarsherlock/view/ActionMode;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public abstract invalidate()V
.end method

.method public isUiFocusable()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method public abstract setCustomView(Landroid/view/View;)V
.end method

.method public abstract setSubtitle(I)V
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/actionbarsherlock/view/ActionMode;->mTag:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method
