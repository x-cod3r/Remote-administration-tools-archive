.class public interface abstract Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivitySorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivitySorter"
.end annotation


# virtual methods
.method public abstract sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Lcom/actionbarsherlock/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/actionbarsherlock/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation
.end method
