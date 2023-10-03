.class Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityChooserViewAdapter"
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_ACTIVITY:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x3

.field private static final ITEM_VIEW_TYPE_FOOTER:I = 0x1

.field public static final MAX_ACTIVITY_COUNT_DEFAULT:I = 0x4

.field public static final MAX_ACTIVITY_COUNT_UNLIMITED:I = 0x7fffffff


# instance fields
.field private mDataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;

.field private mHighlightDefaultActivity:Z

.field private mMaxActivityCount:I

.field private mShowDefaultActivity:Z

.field private mShowFooterView:Z

.field final synthetic this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserView;)V
    .locals 1
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 645
    const/4 v0, 0x4

    iput v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/actionbarsherlock/widget/ActivityChooserView;Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;-><init>(Lcom/actionbarsherlock/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public getActivityCount()I
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 684
    const/4 v1, 0x0

    .line 685
    .local v1, count:I
    iget-object v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-virtual {v2}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->getActivityCount()I

    move-result v0

    .line 686
    .local v0, activityCount:I
    iget-boolean v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-virtual {v2}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 687
    add-int/lit8 v0, v0, -0x1

    .line 689
    :cond_0
    iget v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 690
    iget-boolean v2, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v2, :cond_1

    .line 691
    add-int/lit8 v1, v1, 0x1

    .line 693
    :cond_1
    return v1
.end method

.method public getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    return-object v0
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getHistorySize()I
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->getHistorySize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 697
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v0

    .line 698
    .local v0, itemViewType:I
    packed-switch v0, :pswitch_data_0

    .line 707
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 700
    :pswitch_0
    const/4 v1, 0x0

    .line 705
    :goto_0
    return-object v1

    .line 702
    :pswitch_1
    iget-boolean v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 703
    add-int/lit8 p1, p1, 0x1

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    invoke-virtual {v1, p1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    goto :goto_0

    .line 698
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 712
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 672
    const/4 v0, 0x1

    .line 674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxActivityCount()I
    .locals 1

    .prologue
    .line 806
    iget v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    return v0
.end method

.method public getShowDefaultActivity()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 716
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v3

    .line 717
    .local v3, itemViewType:I
    packed-switch v3, :pswitch_data_0

    .line 751
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 719
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v9, :cond_1

    .line 720
    :cond_0
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    invoke-virtual {v6}, Lcom/actionbarsherlock/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 721
    sget v7, Lcom/actionbarsherlock/R$layout;->abs__activity_chooser_view_list_item:I

    .line 720
    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 722
    invoke-virtual {p2, v9}, Landroid/view/View;->setId(I)V

    .line 723
    sget v6, Lcom/actionbarsherlock/R$id;->abs__title:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 724
    .local v5, titleView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$4(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v6

    .line 725
    sget v7, Lcom/actionbarsherlock/R$string;->abs__activity_chooser_view_see_all:I

    .line 724
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v5           #titleView:Landroid/widget/TextView;
    :cond_1
    move-object v1, p2

    .line 749
    .end local p2
    .local v1, convertView:Landroid/view/View;
    :goto_0
    return-object v1

    .line 729
    .end local v1           #convertView:Landroid/view/View;
    .restart local p2
    :pswitch_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/actionbarsherlock/R$id;->abs__list_item:I

    if-eq v6, v7, :cond_3

    .line 730
    :cond_2
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    invoke-virtual {v6}, Lcom/actionbarsherlock/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 731
    sget v7, Lcom/actionbarsherlock/R$layout;->abs__activity_chooser_view_list_item:I

    .line 730
    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 733
    :cond_3
    iget-object v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$4(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 735
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    sget v6, Lcom/actionbarsherlock/R$id;->abs__icon:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 736
    .local v2, iconView:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 737
    .local v0, activity:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 739
    sget v6, Lcom/actionbarsherlock/R$id;->abs__title:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 740
    .restart local v5       #titleView:Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    invoke-static {}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$11()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 743
    iget-boolean v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-eqz v6, :cond_5

    if-nez p1, :cond_5

    iget-boolean v6, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eqz v6, :cond_5

    .line 744
    invoke-static {p2, v9}, Lcom/actionbarsherlock/widget/ActivityChooserView$SetActivated;->invoke(Landroid/view/View;Z)V

    :cond_4
    :goto_1
    move-object v1, p2

    .line 749
    .end local p2
    .restart local v1       #convertView:Landroid/view/View;
    goto :goto_0

    .line 746
    .end local v1           #convertView:Landroid/view/View;
    .restart local p2
    :cond_5
    invoke-static {p2, v8}, Lcom/actionbarsherlock/widget/ActivityChooserView$SetActivated;->invoke(Landroid/view/View;Z)V

    goto :goto_1

    .line 717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x3

    return v0
.end method

.method public measureContentWidth()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 758
    iget v5, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 759
    .local v5, oldMaxActivityCount:I
    const v7, 0x7fffffff

    iput v7, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 761
    const/4 v0, 0x0

    .line 762
    .local v0, contentWidth:I
    const/4 v4, 0x0

    .line 764
    .local v4, itemView:Landroid/view/View;
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 765
    .local v6, widthMeasureSpec:I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 766
    .local v2, heightMeasureSpec:I
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v1

    .line 768
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 774
    iput v5, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 776
    return v0

    .line 769
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, v3, v4, v7}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 770
    invoke-virtual {v4, v6, v2}, Landroid/view/View;->measure(II)V

    .line 771
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 768
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setDataModel(Lcom/actionbarsherlock/widget/ActivityChooserModel;)V
    .locals 2
    .parameter "dataModel"

    .prologue
    .line 654
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mAdapter:Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;
    invoke-static {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$0(Lcom/actionbarsherlock/widget/ActivityChooserView;)Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Lcom/actionbarsherlock/widget/ActivityChooserModel;

    move-result-object v0

    .line 655
    .local v0, oldDataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$10(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->unregisterObserver(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mDataModel:Lcom/actionbarsherlock/widget/ActivityChooserModel;

    .line 663
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    iget-object v1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->this$0:Lcom/actionbarsherlock/widget/ActivityChooserView;

    #getter for: Lcom/actionbarsherlock/widget/ActivityChooserView;->mModelDataSetOberver:Landroid/database/DataSetObserver;
    invoke-static {v1}, Lcom/actionbarsherlock/widget/ActivityChooserView;->access$10(Lcom/actionbarsherlock/widget/ActivityChooserView;)Landroid/database/DataSetObserver;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/actionbarsherlock/widget/ActivityChooserModel;->registerObserver(Ljava/lang/Object;)V

    .line 666
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 667
    return-void

    .line 658
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setMaxActivityCount(I)V
    .locals 1
    .parameter "maxActivityCount"

    .prologue
    .line 780
    iget v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    if-eq v0, p1, :cond_0

    .line 781
    iput p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mMaxActivityCount:I

    .line 782
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 784
    :cond_0
    return-void
.end method

.method public setShowDefaultActivity(ZZ)V
    .locals 1
    .parameter "showDefaultActivity"
    .parameter "highlightDefaultActivity"

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    if-ne v0, p1, :cond_0

    .line 816
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    if-eq v0, p2, :cond_1

    .line 817
    :cond_0
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowDefaultActivity:Z

    .line 818
    iput-boolean p2, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mHighlightDefaultActivity:Z

    .line 819
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 821
    :cond_1
    return-void
.end method

.method public setShowFooterView(Z)V
    .locals 1
    .parameter "showFooterView"

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    if-eq v0, p1, :cond_0

    .line 792
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->mShowFooterView:Z

    .line 793
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/ActivityChooserView$ActivityChooserViewAdapter;->notifyDataSetChanged()V

    .line 795
    :cond_0
    return-void
.end method
