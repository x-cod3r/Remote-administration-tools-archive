.class public interface abstract annotation Lcom/actionbarsherlock/ActionBarSherlock$Implementation;
.super Ljava/lang/Object;
.source "ActionBarSherlock.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/actionbarsherlock/ActionBarSherlock$Implementation;
        api = -0x1
        dpi = -0x1
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/ActionBarSherlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Implementation"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final DEFAULT_API:I = -0x1

.field public static final DEFAULT_DPI:I = -0x1


# virtual methods
.method public abstract api()I
.end method

.method public abstract dpi()I
.end method
