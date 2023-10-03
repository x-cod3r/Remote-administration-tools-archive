.class Lcom/actionbarsherlock/widget/SuggestionsAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field private static final QUERY_LIMIT:I = 0x32

.field static final REFINE_ALL:I = 0x2

.field static final REFINE_BY_ENTRY:I = 0x1

.field static final REFINE_NONE:I


# instance fields
.field private mClosed:Z

.field private mFlagsCol:I

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderContext:Landroid/content/Context;

.field private mQueryRefinement:I

.field private mSearchManager:Landroid/app/SearchManager;

.field private mSearchView:Lcom/actionbarsherlock/widget/SearchView;

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/actionbarsherlock/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .locals 4
    .parameter "context"
    .parameter "searchView"
    .parameter "mSearchable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/actionbarsherlock/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, outsideDrawablesCache:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 98
    .line 99
    sget v0, Lcom/actionbarsherlock/R$layout;->abs__search_dropdown_item_icons_2line:I

    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, v0, v1, v3}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mClosed:Z

    .line 73
    iput v3, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 81
    iput v2, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mText1Col:I

    .line 82
    iput v2, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mText2Col:I

    .line 83
    iput v2, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 84
    iput v2, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 85
    iput v2, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 86
    iput v2, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mFlagsCol:I

    .line 102
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    .line 103
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 106
    iput-object p4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 133
    return-void
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "resourceUri"

    .prologue
    .line 629
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 630
    .local v0, cached:Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    .line 631
    const/4 v1, 0x0

    .line 634
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 388
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 389
    .local v6, colorValue:Landroid/util/TypedValue;
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v3, Lcom/actionbarsherlock/R$attr;->textColorSearchUrl:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 390
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v6, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 393
    .end local v6           #colorValue:Landroid/util/TypedValue;
    :cond_0
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 394
    .local v7, text:Landroid/text/SpannableString;
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 395
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 396
    const/16 v3, 0x21

    .line 394
    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 397
    return-object v7
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "component"

    .prologue
    const/4 v6, 0x0

    .line 687
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 690
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    :try_start_0
    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 695
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    .line 696
    .local v3, iconId:I
    if-nez v3, :cond_1

    move-object v1, v6

    .line 704
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #iconId:I
    :cond_0
    :goto_0
    return-object v1

    .line 691
    :catch_0
    move-exception v2

    .line 692
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "SuggestionsAdapter"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 693
    goto :goto_0

    .line 697
    .end local v2           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #activityInfo:Landroid/content/pm/ActivityInfo;
    .restart local v3       #iconId:I
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 698
    .local v4, pkg:Ljava/lang/String;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4, v3, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 699
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 700
    const-string v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Invalid icon resource "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 701
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 700
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 702
    goto :goto_0
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "component"

    .prologue
    const/4 v4, 0x0

    .line 665
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, componentIconKey:Ljava/lang/String;
    iget-object v5, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 668
    iget-object v5, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v5, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 669
    .local v0, cached:Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    .line 676
    .end local v0           #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v4

    .line 669
    .restart local v0       #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 672
    .end local v0           #cached:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 674
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_2

    move-object v3, v4

    .line 675
    .local v3, toCache:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_1
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 676
    goto :goto_0

    .line 674
    .end local v3           #toCache:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    goto :goto_1
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 716
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 717
    .local v0, col:I
    invoke-static {p0, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 563
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 564
    .local v2, scheme:Ljava/lang/String;
    const-string v4, "android.resource"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 567
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getTheDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 589
    .end local v2           #scheme:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 568
    .restart local v2       #scheme:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 569
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Resource does not exist: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 587
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v2           #scheme:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 588
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    const-string v4, "SuggestionsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Icon not found: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 589
    goto :goto_0

    .line 573
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v2       #scheme:Ljava/lang/String;
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 574
    .local v3, stream:Ljava/io/InputStream;
    if-nez v3, :cond_1

    .line 575
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to open "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 578
    :cond_1
    const/4 v4, 0x0

    :try_start_4
    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 581
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 582
    :catch_2
    move-exception v0

    .line 583
    .local v0, ex:Ljava/io/IOException;
    :try_start_6
    const-string v6, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error closing icon stream for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 579
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 581
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 585
    :goto_1
    :try_start_8
    throw v4

    .line 582
    :catch_3
    move-exception v0

    .line 583
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v6, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error closing icon stream for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "drawableId"

    .prologue
    const/4 v5, 0x0

    .line 520
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "0"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v0, v5

    .line 552
    :cond_1
    :goto_0
    return-object v0

    .line 525
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 527
    .local v3, resourceId:I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "android.resource://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 527
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, drawableUri:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 531
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 535
    iget-object v6, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 537
    invoke-direct {p0, v1, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 539
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableUri:Ljava/lang/String;
    .end local v3           #resourceId:I
    :catch_0
    move-exception v2

    .line 541
    .local v2, nfe:Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 542
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 545
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 546
    .local v4, uri:Landroid/net/Uri;
    invoke-direct {p0, v4}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 547
    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 549
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    .end local v4           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 551
    .local v2, nfe:Landroid/content/res/Resources$NotFoundException;
    const-string v6, "SuggestionsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Icon resource not found: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 552
    goto :goto_0
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 412
    iget v2, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mIconName1Col:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 413
    const/4 v0, 0x0

    .line 420
    :cond_0
    :goto_0
    return-object v0

    .line 415
    :cond_1
    iget v2, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mIconName1Col:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 417
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 420
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 424
    iget v1, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mIconName2Col:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 425
    const/4 v1, 0x0

    .line 428
    :goto_0
    return-object v1

    .line 427
    :cond_0
    iget v1, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mIconName2Col:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, value:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 4
    .parameter "cursor"
    .parameter "col"

    .prologue
    const/4 v1, 0x0

    .line 721
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 730
    :goto_0
    return-object v1

    .line 725
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SuggestionsAdapter"

    .line 728
    const-string v3, "unexpected error retrieving valid column from cursor, did the remote process die?"

    .line 727
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .parameter "v"
    .parameter "drawable"
    .parameter "nullVisibility"

    .prologue
    const/4 v1, 0x0

    .line 438
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    if-nez p2, :cond_0

    .line 441
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 453
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 451
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_0
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "v"
    .parameter "text"

    .prologue
    .line 402
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "resourceUri"
    .parameter "drawable"

    .prologue
    .line 638
    if-eqz p2, :cond_0

    .line 639
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    :cond_0
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 248
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 256
    .local v0, extras:Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    .line 257
    const-string v1, "in_progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    :cond_0
    return-void

    .line 248
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;

    .line 328
    .local v3, views:Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;
    const/4 v0, 0x0

    .line 329
    .local v0, flags:I
    iget v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mFlagsCol:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 330
    iget v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mFlagsCol:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 332
    :cond_0
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 333
    iget v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mText1Col:I

    invoke-static {p3, v4}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, text1:Ljava/lang/String;
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-direct {p0, v4, v1}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 336
    .end local v1           #text1:Ljava/lang/String;
    :cond_1
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 338
    iget v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mText2UrlCol:I

    invoke-static {p3, v4}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, text2:Ljava/lang/CharSequence;
    if-eqz v2, :cond_7

    .line 340
    invoke-direct {p0, v2}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 347
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 348
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 349
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 350
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 358
    :cond_2
    :goto_1
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    invoke-direct {p0, v4, v2}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 361
    .end local v2           #text2:Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 362
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {p0, v4, v5, v6}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 364
    :cond_4
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    .line 365
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v4, v5, v10}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 367
    :cond_5
    iget v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mQueryRefinement:I

    if-eq v4, v9, :cond_6

    .line 368
    iget v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mQueryRefinement:I

    if-ne v4, v7, :cond_9

    .line 369
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_9

    .line 370
    :cond_6
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    iget-object v5, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 372
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    :goto_2
    return-void

    .line 342
    .restart local v2       #text2:Ljava/lang/CharSequence;
    :cond_7
    iget v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mText2Col:I

    invoke-static {p3, v4}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 353
    :cond_8
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 354
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 355
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 374
    .end local v2           #text2:Ljava/lang/CharSequence;
    :cond_9
    iget-object v4, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 272
    iget-boolean v1, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mClosed:Z

    if-eqz v1, :cond_1

    .line 273
    const-string v1, "SuggestionsAdapter"

    const-string v2, "Tried to change cursor after adapter was closed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 281
    if-eqz p1, :cond_0

    .line 282
    const-string v1, "suggest_text_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mText1Col:I

    .line 283
    const-string v1, "suggest_text_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mText2Col:I

    .line 284
    const-string v1, "suggest_text_2_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 285
    const-string v1, "suggest_icon_1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 286
    const-string v1, "suggest_icon_2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 287
    const-string v1, "suggest_flags"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mFlagsCol:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SuggestionsAdapter"

    const-string v2, "error changing cursor and caching columns"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mClosed:Z

    .line 227
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 465
    if-nez p1, :cond_1

    move-object v0, v1

    .line 474
    :cond_0
    :goto_0
    return-object v0

    .line 469
    :cond_1
    const-string v2, "suggest_intent_query"

    invoke-static {p1, v2}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, query:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v0, v1

    .line 474
    goto :goto_0
.end method

.method public getQueryRefinement()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mQueryRefinement:I

    return v0
.end method

.method public getSuggestions(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
    .parameter "query"
    .parameter "limit"

    .prologue
    const/4 v2, 0x0

    .line 202
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 203
    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 204
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 205
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 208
    .local v6, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "search_suggest_query"

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 211
    invoke-virtual {v6, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    if-lez p2, :cond_0

    .line 214
    const-string v0, "limit"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 217
    :cond_0
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 220
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTheDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 594
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, authority:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 597
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "No authority: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 600
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 605
    .local v6, r:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 606
    .local v5, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 607
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "No path: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 601
    .end local v5           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 602
    .local v2, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "No package found for authority: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 609
    .end local v2           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #r:Landroid/content/res/Resources;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 611
    .local v4, len:I
    if-ne v4, v9, :cond_2

    .line 613
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 622
    .local v3, id:I
    :goto_0
    if-nez v3, :cond_4

    .line 623
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "No resource found for: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 614
    .end local v3           #id:I
    :catch_1
    move-exception v1

    .line 615
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Single path segment is not a resource ID: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 617
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    .line 618
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 619
    .restart local v3       #id:I
    goto :goto_0

    .line 620
    .end local v3           #id:I
    :cond_3
    new-instance v7, Ljava/io/FileNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "More than two path segments: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 625
    .restart local v3       #id:I
    :cond_4
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    return-object v7
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 486
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 496
    :cond_0
    :goto_0
    return-object v2

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions cursor threw exception."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v4, v5, p3}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 491
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 492
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;

    .line 493
    .local v3, views:Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;
    iget-object v1, v3, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    .line 494
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 299
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;

    invoke-direct {v1, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 301
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/support/v4/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 236
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 237
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/support/v4/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    .line 244
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 245
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 380
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    check-cast v0, Ljava/lang/CharSequence;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    .line 383
    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 6
    .parameter "constraint"

    .prologue
    const/4 v3, 0x0

    .line 173
    if-nez p1, :cond_1

    const-string v2, ""

    .line 178
    .local v2, query:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .line 179
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v4}, Lcom/actionbarsherlock/widget/SearchView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 180
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mSearchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v4}, Lcom/actionbarsherlock/widget/SearchView;->getWindowVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 198
    :cond_0
    :goto_1
    return-object v3

    .line 173
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 185
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #query:Ljava/lang/String;
    :cond_2
    const/16 v4, 0x32

    :try_start_0
    invoke-virtual {p0, v2, v4}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getSuggestions(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 190
    goto :goto_1

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "SuggestionsAdapter"

    const-string v5, "Search suggestions query threw an exception."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setQueryRefinement(I)V
    .locals 0
    .parameter "refineWhat"

    .prologue
    .line 145
    iput p1, p0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 146
    return-void
.end method
