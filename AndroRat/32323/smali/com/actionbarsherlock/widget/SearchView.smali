.class public Lcom/actionbarsherlock/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Lcom/actionbarsherlock/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;,
        Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;,
        Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;,
        Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
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

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private mSearchButton:Landroid/view/View;

.field private mSearchEditFrame:Landroid/view/View;

.field private mSearchHintIcon:Landroid/widget/ImageView;

.field private mSearchPlate:Landroid/view/View;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mSubmitArea:Landroid/view/View;

.field private mSubmitButton:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButton:Landroid/view/View;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/actionbarsherlock/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v12, 0x1000

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 256
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    new-instance v7, Lcom/actionbarsherlock/widget/SearchView$1;

    invoke-direct {v7, p0}, Lcom/actionbarsherlock/widget/SearchView$1;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 161
    new-instance v7, Lcom/actionbarsherlock/widget/SearchView$2;

    invoke-direct {v7, p0}, Lcom/actionbarsherlock/widget/SearchView$2;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 167
    new-instance v7, Lcom/actionbarsherlock/widget/SearchView$3;

    invoke-direct {v7, p0}, Lcom/actionbarsherlock/widget/SearchView$3;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 182
    new-instance v7, Ljava/util/WeakHashMap;

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 875
    new-instance v7, Lcom/actionbarsherlock/widget/SearchView$4;

    invoke-direct {v7, p0}, Lcom/actionbarsherlock/widget/SearchView$4;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 924
    new-instance v7, Lcom/actionbarsherlock/widget/SearchView$5;

    invoke-direct {v7, p0}, Lcom/actionbarsherlock/widget/SearchView$5;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1156
    new-instance v7, Lcom/actionbarsherlock/widget/SearchView$6;

    invoke-direct {v7, p0}, Lcom/actionbarsherlock/widget/SearchView$6;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1342
    new-instance v7, Lcom/actionbarsherlock/widget/SearchView$7;

    invoke-direct {v7, p0}, Lcom/actionbarsherlock/widget/SearchView$7;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1353
    new-instance v7, Lcom/actionbarsherlock/widget/SearchView$8;

    invoke-direct {v7, p0}, Lcom/actionbarsherlock/widget/SearchView$8;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1645
    new-instance v7, Lcom/actionbarsherlock/widget/SearchView$9;

    invoke-direct {v7, p0}, Lcom/actionbarsherlock/widget/SearchView$9;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 258
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x8

    if-ge v7, v8, :cond_0

    .line 259
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "SearchView is API 8+ only."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 263
    :cond_0
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 262
    check-cast v3, Landroid/view/LayoutInflater;

    .line 264
    .local v3, inflater:Landroid/view/LayoutInflater;
    sget v7, Lcom/actionbarsherlock/R$layout;->abs__search_view:I

    invoke-virtual {v3, v7, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 266
    sget v7, Lcom/actionbarsherlock/R$id;->abs__search_button:I

    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchButton:Landroid/view/View;

    .line 267
    sget v7, Lcom/actionbarsherlock/R$id;->abs__search_src_text:I

    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    .line 268
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, p0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setSearchView(Lcom/actionbarsherlock/widget/SearchView;)V

    .line 270
    sget v7, Lcom/actionbarsherlock/R$id;->abs__search_edit_frame:I

    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 271
    sget v7, Lcom/actionbarsherlock/R$id;->abs__search_plate:I

    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 272
    sget v7, Lcom/actionbarsherlock/R$id;->abs__submit_area:I

    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 273
    sget v7, Lcom/actionbarsherlock/R$id;->abs__search_go_btn:I

    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;

    .line 274
    sget v7, Lcom/actionbarsherlock/R$id;->abs__search_close_btn:I

    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 275
    sget v7, Lcom/actionbarsherlock/R$id;->abs__search_voice_btn:I

    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;

    .line 276
    sget v7, Lcom/actionbarsherlock/R$id;->abs__search_mag_icon:I

    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    .line 278
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchButton:Landroid/view/View;

    iget-object v8, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;

    iget-object v8, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;

    iget-object v8, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Lcom/actionbarsherlock/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 285
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 286
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 287
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 288
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Lcom/actionbarsherlock/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 290
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    new-instance v8, Lcom/actionbarsherlock/widget/SearchView$10;

    invoke-direct {v8, p0}, Lcom/actionbarsherlock/widget/SearchView$10;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    invoke-virtual {v7, v8}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 299
    sget-object v7, Lcom/actionbarsherlock/R$styleable;->SherlockSearchView:[I

    invoke-virtual {p1, p2, v7, v10, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 300
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 301
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 302
    .local v5, maxWidth:I
    if-eq v5, v9, :cond_1

    .line 303
    invoke-virtual {p0, v5}, Lcom/actionbarsherlock/widget/SearchView;->setMaxWidth(I)V

    .line 305
    :cond_1
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 306
    .local v6, queryHint:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 307
    invoke-virtual {p0, v6}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 309
    :cond_2
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 310
    .local v2, imeOptions:I
    if-eq v2, v9, :cond_3

    .line 311
    invoke-virtual {p0, v2}, Lcom/actionbarsherlock/widget/SearchView;->setImeOptions(I)V

    .line 313
    :cond_3
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 314
    .local v4, inputType:I
    if-eq v4, v9, :cond_4

    .line 315
    invoke-virtual {p0, v4}, Lcom/actionbarsherlock/widget/SearchView;->setInputType(I)V

    .line 318
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 320
    const/4 v1, 0x1

    .line 322
    .local v1, focusable:Z
    sget-object v7, Lcom/actionbarsherlock/R$styleable;->SherlockView:[I

    invoke-virtual {p1, p2, v7, v10, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 323
    invoke-virtual {v0, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 324
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setFocusable(Z)V

    .line 328
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 329
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 330
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v8, "android.speech.extra.LANGUAGE_MODEL"

    .line 331
    const-string v9, "web_search"

    .line 330
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 334
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 336
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 337
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v7, :cond_5

    .line 338
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_6

    .line 339
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v8, Lcom/actionbarsherlock/widget/SearchView$11;

    invoke-direct {v8, p0}, Lcom/actionbarsherlock/widget/SearchView$11;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 355
    :cond_5
    :goto_0
    iget-boolean v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v7}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 356
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateQueryHint()V

    .line 357
    return-void

    .line 347
    :cond_6
    iget-object v7, p0, Lcom/actionbarsherlock/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/actionbarsherlock/widget/SearchView$12;

    invoke-direct {v8, p0}, Lcom/actionbarsherlock/widget/SearchView$12;-><init>(Lcom/actionbarsherlock/widget/SearchView;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method static synthetic access$0(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1790
    invoke-static {p0, p1, p2}, Lcom/actionbarsherlock/widget/SearchView;->showSoftInputUnchecked(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$10(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1228
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onVoiceClicked()V

    return-void
.end method

.method static synthetic access$11(Lcom/actionbarsherlock/widget/SearchView;)Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$12(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1624
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static synthetic access$13(Lcom/actionbarsherlock/widget/SearchView;)Landroid/app/SearchableInfo;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$14(Lcom/actionbarsherlock/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 974
    invoke-direct {p0, p1, p2, p3}, Lcom/actionbarsherlock/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/actionbarsherlock/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1447
    invoke-direct {p0, p1, p2, p3}, Lcom/actionbarsherlock/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16(Lcom/actionbarsherlock/widget/SearchView;IILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1322
    invoke-direct {p0, p1, p2, p3}, Lcom/actionbarsherlock/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$17(Lcom/actionbarsherlock/widget/SearchView;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1333
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18(Lcom/actionbarsherlock/widget/SearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1167
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$19(Landroid/widget/AutoCompleteTextView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1780
    invoke-static {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/actionbarsherlock/widget/SearchView;)Landroid/support/v4/widget/CursorAdapter;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$20(Lcom/actionbarsherlock/widget/SearchView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 853
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$21(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$22(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1305
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$3(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1219
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$5(Lcom/actionbarsherlock/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1199
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$7(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onSubmitQuery()V

    return-void
.end method

.method static synthetic access$9(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;

    return-object v0
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 7

    .prologue
    .line 1306
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1307
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1308
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1309
    .local v0, anchorPadding:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1310
    .local v1, dropDownPadding:Landroid/graphics/Rect;
    iget-boolean v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_1

    .line 1311
    sget v4, Lcom/actionbarsherlock/R$dimen;->abs__dropdownitem_icon_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1312
    sget v5, Lcom/actionbarsherlock/R$dimen;->abs__dropdownitem_text_padding_left:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1311
    add-int v2, v4, v5

    .line 1314
    .local v2, iconOffset:I
    :goto_0
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1315
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    neg-int v5, v5

    .line 1316
    add-int/2addr v5, v0

    .line 1315
    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1317
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v5, p0, Lcom/actionbarsherlock/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    .line 1318
    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    sub-int/2addr v5, v0

    .line 1317
    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1320
    .end local v0           #anchorPadding:I
    .end local v1           #dropDownPadding:Landroid/graphics/Rect;
    .end local v2           #iconOffset:I
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 1313
    .restart local v0       #anchorPadding:I
    .restart local v1       #dropDownPadding:Landroid/graphics/Rect;
    .restart local v3       #res:Landroid/content/res/Resources;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "action"
    .parameter "data"
    .parameter "extraData"
    .parameter "query"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1474
    if-eqz p2, :cond_0

    .line 1475
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1477
    :cond_0
    const-string v1, "user_query"

    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1478
    if-eqz p4, :cond_1

    .line 1479
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    :cond_1
    if-eqz p3, :cond_2

    .line 1482
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1484
    :cond_2
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1485
    const-string v1, "app_data"

    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1487
    :cond_3
    if-eqz p5, :cond_4

    .line 1488
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1489
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1491
    :cond_4
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1492
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .parameter "c"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1584
    :try_start_0
    const-string v0, "suggest_intent_action"

    invoke-static {p1, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1586
    .local v1, action:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1589
    :cond_0
    if-nez v1, :cond_1

    .line 1590
    const-string v1, "android.intent.action.SEARCH"

    .line 1594
    :cond_1
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1595
    .local v7, data:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1596
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    .line 1599
    :cond_2
    if-eqz v7, :cond_3

    .line 1600
    const-string v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1601
    .local v10, id:Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1605
    .end local v10           #id:Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 1607
    .local v2, dataUri:Landroid/net/Uri;
    :goto_0
    const-string v0, "suggest_intent_query"

    invoke-static {p1, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1608
    .local v4, query:Ljava/lang/String;
    const-string v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, extraData:Ljava/lang/String;
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1610
    invoke-direct/range {v0 .. v6}, Lcom/actionbarsherlock/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1620
    .end local v1           #action:Ljava/lang/String;
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v3           #extraData:Ljava/lang/String;
    .end local v4           #query:Ljava/lang/String;
    .end local v7           #data:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1605
    .restart local v1       #action:Ljava/lang/String;
    .restart local v7       #data:Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1611
    .end local v1           #action:Ljava/lang/String;
    .end local v7           #data:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1614
    .local v8, e:Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 1618
    .local v11, rowNum:I
    :goto_2
    const-string v0, "SearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Search suggestions cursor at row "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1619
    const-string v6, " returned exception."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1618
    invoke-static {v0, v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1620
    const/4 v0, 0x0

    goto :goto_1

    .line 1615
    .end local v11           #rowNum:I
    :catch_1
    move-exception v9

    .line 1616
    .local v9, e2:Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .restart local v11       #rowNum:I
    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .parameter "baseIntent"
    .parameter "searchable"

    .prologue
    .line 1514
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 1519
    .local v8, searchActivity:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1520
    .local v6, queryIntent:Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1521
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    .line 1522
    const/high16 v12, 0x4000

    .line 1521
    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1528
    .local v3, pending:Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1533
    .local v5, queryExtras:Landroid/os/Bundle;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1536
    .local v9, voiceIntent:Landroid/content/Intent;
    const-string v1, "free_form"

    .line 1537
    .local v1, languageModel:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1538
    .local v4, prompt:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1539
    .local v0, language:Ljava/lang/String;
    const/4 v2, 0x1

    .line 1541
    .local v2, maxResults:I
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1542
    .local v7, resources:Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_0

    .line 1543
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1545
    :cond_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1546
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1548
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1549
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1551
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1552
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 1554
    :cond_3
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1555
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1556
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1558
    const-string v11, "calling_package"

    if-nez v8, :cond_4

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1562
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1563
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1565
    return-object v9

    .line 1559
    :cond_4
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .parameter "baseIntent"
    .parameter "searchable"

    .prologue
    .line 1499
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1500
    .local v1, voiceIntent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1501
    .local v0, searchActivity:Landroid/content/ComponentName;
    const-string v3, "calling_package"

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1503
    return-object v1

    .line 1502
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 1

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1197
    return-void
.end method

.method private static ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V
    .locals 6
    .parameter "view"
    .parameter "visible"

    .prologue
    .line 1782
    :try_start_0
    const-class v1, Landroid/widget/AutoCompleteTextView;

    const-string v2, "ensureImeVisible"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1783
    .local v0, method:Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1784
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1788
    .end local v0           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1785
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private forceSuggestionQuery()V
    .locals 5

    .prologue
    .line 1626
    :try_start_0
    const-class v2, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const-string v3, "doBeforeTextChanged"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1627
    .local v1, before:Ljava/lang/reflect/Method;
    const-class v2, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const-string v3, "doAfterTextChanged"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1628
    .local v0, after:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1629
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1630
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    .end local v0           #after:Ljava/lang/reflect/Method;
    .end local v1           #before:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1632
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "hintText"

    .prologue
    const/4 v7, 0x0

    .line 1072
    iget-boolean v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    if-nez v3, :cond_0

    .line 1080
    .end local p1
    :goto_0
    return-object p1

    .line 1074
    .restart local p1
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1075
    .local v1, ssb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1076
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->getSearchIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1077
    .local v0, searchIcon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff4

    mul-double/2addr v3, v5

    double-to-int v2, v3

    .line 1078
    .local v2, textSize:I
    invoke-virtual {v0, v7, v7, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1079
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v1

    .line 1080
    goto :goto_0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 767
    sget v1, Lcom/actionbarsherlock/R$dimen;->abs__search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 766
    return v0
.end method

.method private getSearchIconId()I
    .locals 4

    .prologue
    .line 1064
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1065
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/actionbarsherlock/R$attr;->searchViewSearchIcon:I

    .line 1066
    const/4 v3, 0x1

    .line 1065
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1067
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private hasVoiceSearch()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 787
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 788
    const/4 v1, 0x0

    .line 789
    .local v1, testIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 790
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 794
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 795
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 796
    const/high16 v4, 0x1

    .line 795
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 797
    .local v0, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 800
    .end local v0           #ri:Landroid/content/pm/ResolveInfo;
    .end local v1           #testIntent:Landroid/content/Intent;
    :cond_1
    return v2

    .line 791
    .restart local v1       #testIntent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 792
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1638
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1639
    const/4 v1, 0x2

    .line 1638
    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1426
    if-nez p1, :cond_0

    .line 1436
    :goto_0
    return-void

    .line 1432
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1433
    :catch_0
    move-exception v0

    .line 1434
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed launch activity: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "actionKey"
    .parameter "actionMsg"
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 1448
    const-string v1, "android.intent.action.SEARCH"

    .local v1, action:Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1449
    invoke-direct/range {v0 .. v6}, Lcom/actionbarsherlock/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1450
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1451
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1409
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1410
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1412
    invoke-direct {p0, v0, p2, p3}, Lcom/actionbarsherlock/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1415
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1417
    const/4 v2, 0x1

    .line 1419
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1200
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1201
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1202
    iget-boolean v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_1

    .line 1204
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnCloseListener:Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnCloseListener:Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;

    invoke-interface {v1}, Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1206
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->clearFocus()V

    .line 1208
    invoke-direct {p0, v3}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1217
    :cond_1
    :goto_0
    return-void

    .line 1212
    :cond_2
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1214
    invoke-direct {p0, v3}, Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 2
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    const/4 v0, 0x0

    .line 1323
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSuggestionListener:Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;

    if-eqz v1, :cond_0

    .line 1324
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSuggestionListener:Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;

    invoke-interface {v1, p1}, Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1325
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1326
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V

    .line 1327
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->dismissSuggestions()V

    .line 1328
    const/4 v0, 0x1

    .line 1330
    :cond_1
    return v0
.end method

.method private onItemSelected(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSuggestionListener:Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSuggestionListener:Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1336
    :cond_0
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1337
    const/4 v0, 0x1

    .line 1339
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    .line 1220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1221
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1222
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V

    .line 1223
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1226
    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1182
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1183
    .local v0, query:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1184
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryChangeListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryChangeListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1186
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1187
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1188
    invoke-direct {p0, v3}, Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V

    .line 1190
    :cond_1
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->dismissSuggestions()V

    .line 1193
    :cond_2
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x15

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 976
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return v2

    .line 979
    :cond_1
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v4, :cond_0

    .line 982
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 985
    const/16 v4, 0x42

    if-eq p2, v4, :cond_2

    const/16 v4, 0x54

    if-eq p2, v4, :cond_2

    .line 986
    const/16 v4, 0x3d

    if-ne p2, v4, :cond_3

    .line 987
    :cond_2
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    .line 988
    .local v0, position:I
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/actionbarsherlock/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 993
    .end local v0           #position:I
    :cond_3
    if-eq p2, v5, :cond_4

    const/16 v4, 0x16

    if-ne p2, v4, :cond_6

    .line 998
    :cond_4
    if-ne p2, v5, :cond_5

    move v1, v2

    .line 1000
    .local v1, selPoint:I
    :goto_1
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1001
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4, v2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1002
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1003
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-static {v2, v3}, Lcom/actionbarsherlock/widget/SearchView;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    move v2, v3

    .line 1005
    goto :goto_0

    .line 998
    .end local v1           #selPoint:I
    :cond_5
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    .line 999
    invoke-virtual {v4}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    goto :goto_1

    .line 1009
    :cond_6
    const/16 v3, 0x13

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "newText"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1168
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1169
    .local v1, text:Ljava/lang/CharSequence;
    iput-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1170
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 1171
    .local v0, hasText:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateSubmitButton(Z)V

    .line 1172
    if-eqz v0, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/actionbarsherlock/widget/SearchView;->updateVoiceButton(Z)V

    .line 1173
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateCloseButton()V

    .line 1174
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateSubmitArea()V

    .line 1175
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryChangeListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1176
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryChangeListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1178
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1179
    return-void

    .end local v0           #hasText:Z
    :cond_1
    move v0, v3

    .line 1170
    goto :goto_0

    .restart local v0       #hasText:Z
    :cond_2
    move v2, v3

    .line 1172
    goto :goto_1
.end method

.method private onVoiceClicked()V
    .locals 6

    .prologue
    .line 1230
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1235
    .local v2, searchable:Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1236
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Lcom/actionbarsherlock/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 1238
    .local v3, webSearchIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1244
    .end local v3           #webSearchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1247
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "SearchView"

    const-string v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1239
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1240
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Lcom/actionbarsherlock/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1242
    .local v0, appSearchIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 837
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 1376
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1377
    .local v2, oldQuery:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1378
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1396
    :goto_0
    return-void

    .line 1381
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1383
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/support/v4/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1384
    .local v1, newQuery:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 1387
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1390
    :cond_1
    invoke-direct {p0, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1394
    .end local v1           #newQuery:Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 854
    if-eqz p1, :cond_1

    .line 855
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 859
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 858
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 861
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/actionbarsherlock/widget/SearchView;->setText(Landroid/widget/AutoCompleteTextView;Ljava/lang/CharSequence;Z)V

    .line 1444
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1445
    return-void

    .line 1444
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private static setText(Landroid/widget/AutoCompleteTextView;Ljava/lang/CharSequence;Z)V
    .locals 7
    .parameter "view"
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 1803
    :try_start_0
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "setText"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/CharSequence;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1804
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1805
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1806
    :catch_0
    move-exception v0

    .line 1808
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static showSoftInputUnchecked(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;I)V
    .locals 7
    .parameter "view"
    .parameter "imm"
    .parameter "flags"

    .prologue
    .line 1792
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "showSoftInputUnchecked"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/ResultReceiver;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1793
    .local v1, method:Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1794
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1795
    :catch_0
    move-exception v0

    .line 1797
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 827
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 830
    .local v0, hasText:Z
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 831
    .local v1, showClose:Z
    :cond_1
    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 832
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v0, :cond_4

    sget-object v2, Lcom/actionbarsherlock/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_2
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 833
    return-void

    .end local v0           #hasText:Z
    .end local v1           #showClose:Z
    :cond_2
    move v0, v1

    .line 827
    goto :goto_0

    .line 831
    .restart local v0       #hasText:Z
    .restart local v1       #showClose:Z
    :cond_3
    const/16 v2, 0x8

    goto :goto_1

    .line 832
    :cond_4
    sget-object v2, Lcom/actionbarsherlock/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_2
.end method

.method private updateFocusedState()V
    .locals 3

    .prologue
    .line 840
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 841
    .local v0, focused:Z
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_0

    sget-object v1, Lcom/actionbarsherlock/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 842
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_1

    sget-object v1, Lcom/actionbarsherlock/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 843
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->invalidate()V

    .line 844
    return-void

    .line 841
    :cond_0
    sget-object v1, Lcom/actionbarsherlock/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_0

    .line 842
    :cond_1
    sget-object v1, Lcom/actionbarsherlock/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_1
.end method

.method private updateQueryHint()V
    .locals 4

    .prologue
    .line 1084
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1085
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/actionbarsherlock/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_3

    .line 1087
    const/4 v0, 0x0

    .line 1088
    .local v0, hint:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 1089
    .local v1, hintId:I
    if-eqz v1, :cond_2

    .line 1090
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1092
    :cond_2
    if-eqz v0, :cond_0

    .line 1093
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1096
    .end local v0           #hint:Ljava/lang/CharSequence;
    .end local v1           #hintId:I
    :cond_3
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-direct {p0, v3}, Lcom/actionbarsherlock/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1105
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1106
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1107
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1110
    .local v0, inputType:I
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    .line 1113
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1114
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1115
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 1122
    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 1125
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1126
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v1, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1131
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1132
    new-instance v1, Lcom/actionbarsherlock/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1133
    iget-object v4, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Lcom/actionbarsherlock/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Lcom/actionbarsherlock/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    .line 1132
    iput-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 1134
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1135
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v1, Lcom/actionbarsherlock/widget/SuggestionsAdapter;

    .line 1136
    iget-boolean v3, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    .line 1135
    :cond_2
    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1139
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    .line 817
    const/16 v0, 0x8

    .line 818
    .local v0, visibility:I
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 821
    :cond_0
    const/4 v0, 0x0

    .line 823
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 824
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .parameter "hasText"

    .prologue
    .line 808
    const/16 v0, 0x8

    .line 809
    .local v0, visibility:I
    iget-boolean v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 810
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    .line 811
    :cond_0
    const/4 v0, 0x0

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 814
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 7
    .parameter "collapsed"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 771
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconified:Z

    .line 773
    if-eqz p1, :cond_0

    move v1, v2

    .line 775
    .local v1, visCollapsed:I
    :goto_0
    iget-object v5, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v2

    .line 777
    .local v0, hasText:Z
    :goto_1
    iget-object v5, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 778
    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateSubmitButton(Z)V

    .line 779
    iget-object v6, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 780
    iget-object v5, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v6, :cond_3

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateCloseButton()V

    .line 782
    if-eqz v0, :cond_4

    :goto_4
    invoke-direct {p0, v2}, Lcom/actionbarsherlock/widget/SearchView;->updateVoiceButton(Z)V

    .line 783
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateSubmitArea()V

    .line 784
    return-void

    .end local v0           #hasText:Z
    .end local v1           #visCollapsed:I
    :cond_0
    move v1, v3

    .line 773
    goto :goto_0

    .restart local v1       #visCollapsed:I
    :cond_1
    move v0, v4

    .line 775
    goto :goto_1

    .restart local v0       #hasText:Z
    :cond_2
    move v5, v2

    .line 779
    goto :goto_2

    :cond_3
    move v3, v2

    .line 780
    goto :goto_3

    :cond_4
    move v2, v4

    .line 782
    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .parameter "empty"

    .prologue
    .line 1148
    const/16 v0, 0x8

    .line 1149
    .local v0, visibility:I
    iget-boolean v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1150
    const/4 v0, 0x0

    .line 1151
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mClearingFocus:Z

    .line 461
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setImeVisibility(Z)V

    .line 462
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 463
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 464
    iput-boolean v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mClearingFocus:Z

    .line 465
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 727
    iget v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 566
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 567
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 576
    :cond_0
    :goto_0
    return-object v0

    .line 568
    :cond_1
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_2

    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, hint:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 571
    .local v1, hintId:I
    if-eqz v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 576
    .end local v0           #hint:Ljava/lang/CharSequence;
    .end local v1           #hintId:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 2

    .prologue
    .line 1273
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->clearFocus()V

    .line 1274
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1275
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mExpandedInActionView:Z

    .line 1277
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    .line 1291
    :goto_0
    return-void

    .line 1286
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mExpandedInActionView:Z

    .line 1287
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mCollapsedImeOptions:I

    .line 1288
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1289
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1290
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 849
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 850
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 851
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1295
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1296
    const-class v0, Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1297
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1301
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1302
    const-class v0, Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1303
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    .line 904
    const/4 v0, 0x0

    .line 916
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 734
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 763
    :goto_0
    return-void

    .line 738
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 739
    .local v1, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 741
    .local v0, width:I
    sparse-switch v1, :sswitch_data_0

    .line 761
    :cond_1
    :goto_1
    const/high16 v1, 0x4000

    .line 762
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 744
    :sswitch_0
    iget v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    .line 745
    iget v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 746
    goto :goto_1

    .line 747
    :cond_2
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 749
    goto :goto_1

    .line 752
    :sswitch_1
    iget v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    .line 753
    iget v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 755
    goto :goto_1

    .line 758
    :sswitch_2
    iget v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    iget v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    :goto_2
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_2

    .line 741
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "queryText"

    .prologue
    .line 872
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 873
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1255
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->postUpdateFocusedState()V

    .line 1256
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1257
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->forceSuggestionQuery()V

    .line 1259
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 1263
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1265
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->postUpdateFocusedState()V

    .line 1266
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 442
    iget-boolean v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mClearingFocus:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 444
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 446
    :cond_2
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_3

    .line 447
    iget-object v2, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, p1, p2}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 448
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 449
    invoke-direct {p0, v1}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 453
    .end local v0           #result:Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "appSearchData"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 391
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .parameter "iconify"

    .prologue
    .line 619
    if-eqz p1, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onCloseClicked()V

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_0
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .parameter "iconified"

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    .line 596
    :goto_0
    return-void

    .line 593
    :cond_0
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mIconifiedByDefault:Z

    .line 594
    invoke-direct {p0, p1}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 595
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .parameter "imeOptions"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 403
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "inputType"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 426
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "maxpixels"

    .prologue
    .line 714
    iput p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mMaxWidth:I

    .line 716
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->requestLayout()V

    .line 717
    return-void
.end method

.method public setOnCloseListener(Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnCloseListener:Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;

    .line 484
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 493
    return-void
.end method

.method public setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnQueryChangeListener:Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;

    .line 475
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 513
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 514
    return-void
.end method

.method public setOnSuggestionListener(Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 501
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mOnSuggestionListener:Lcom/actionbarsherlock/widget/SearchView$OnSuggestionListener;

    .line 502
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "query"
    .parameter "submit"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 535
    if-eqz p1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 537
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 541
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->onSubmitQuery()V

    .line 544
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 556
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateQueryHint()V

    .line 557
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 673
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryRefinement:Z

    .line 674
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    instance-of v0, v0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/actionbarsherlock/widget/SuggestionsAdapter;

    .line 676
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    .line 675
    :goto_0
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 678
    :cond_0
    return-void

    .line 676
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .parameter "searchable"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 369
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateSearchAutoComplete()V

    .line 371
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->updateQueryHint()V

    .line 374
    :cond_0
    invoke-direct {p0}, Lcom/actionbarsherlock/widget/SearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 376
    iget-boolean v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 382
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 645
    iput-boolean p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 646
    invoke-virtual {p0}, Lcom/actionbarsherlock/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/actionbarsherlock/widget/SearchView;->updateViewsVisibility(Z)V

    .line 647
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 697
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Lcom/actionbarsherlock/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 698
    return-void
.end method
