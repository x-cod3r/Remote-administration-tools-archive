.class public Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field final mContext:Landroid/content/Context;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    .line 66
    sget-object v1, Lcom/actionbarsherlock/R$styleable;->SherlockMenuView:[I

    .line 65
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 70
    const/4 v1, -0x1

    .line 69
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 72
    const/4 v1, 0x7

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 73
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertCheckBox()V
    .locals 3

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 259
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/actionbarsherlock/R$layout;->abs__list_menu_item_checkbox:I

    .line 260
    const/4 v2, 0x0

    .line 259
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 258
    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 261
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 262
    return-void
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 243
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/actionbarsherlock/R$layout;->abs__list_menu_item_icon:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 245
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;I)V

    .line 246
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 251
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v1, Lcom/actionbarsherlock/R$layout;->abs__list_menu_item_radio:I

    .line 252
    const/4 v2, 0x0

    .line 251
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 250
    iput-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 253
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->addView(Landroid/view/View;)V

    .line 254
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;I)V
    .locals 2
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    .line 101
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->setVisibility(I)V

    .line 103
    invoke-virtual {p1, p0}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/actionbarsherlock/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 105
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    .line 106
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 107
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->setEnabled(Z)V

    .line 108
    return-void

    .line 101
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 86
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    sget v0, Lcom/actionbarsherlock/R$id;->abs__title:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 89
    iget v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 91
    iget v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 94
    :cond_0
    sget v0, Lcom/actionbarsherlock/R$id;->abs__shortcut:I

    invoke-virtual {p0, v0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 95
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 230
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 233
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 234
    .local v0, iconLp:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 235
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 238
    .end local v0           #iconLp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 239
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 5
    .parameter "checkable"

    .prologue
    const/16 v3, 0x8

    .line 130
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 137
    :cond_2
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 146
    :cond_3
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 147
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 148
    .local v0, compoundButton:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 154
    .local v2, otherCompoundButton:Landroid/widget/CompoundButton;
    :goto_1
    if-eqz p1, :cond_7

    .line 155
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 157
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 158
    .local v1, newVisibility:I
    :goto_2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_4

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 163
    :cond_4
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 164
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0

    .line 150
    .end local v0           #compoundButton:Landroid/widget/CompoundButton;
    .end local v1           #newVisibility:I
    .end local v2           #otherCompoundButton:Landroid/widget/CompoundButton;
    :cond_5
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 151
    .restart local v0       #compoundButton:Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .restart local v2       #otherCompoundButton:Landroid/widget/CompoundButton;
    goto :goto_1

    :cond_6
    move v1, v3

    .line 157
    goto :goto_2

    .line 167
    :cond_7
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 168
    iget-object v4, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 187
    .local v0, compoundButton:Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 188
    return-void

    .line 181
    .end local v0           #compoundButton:Landroid/widget/CompoundButton;
    :cond_1
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .restart local v0       #compoundButton:Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .parameter "forceShow"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    .line 112
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "icon"

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 205
    .local v0, showIcon:Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_2

    .line 226
    .end local p1
    :cond_0
    :goto_1
    return-void

    .line 204
    .end local v0           #showIcon:Z
    .restart local p1
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 209
    .restart local v0       #showIcon:Z
    :cond_2
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 213
    :cond_3
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    .line 214
    invoke-direct {p0}, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->insertIconView()V

    .line 217
    :cond_4
    if-nez p1, :cond_5

    iget-boolean v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_7

    .line 218
    :cond_5
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .end local p1
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 218
    .restart local p1
    :cond_6
    const/4 p1, 0x0

    goto :goto_2

    .line 224
    :cond_7
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setShortcut(ZC)V
    .locals 3
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 191
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    const/4 v0, 0x0

    .line 194
    .local v0, newVisibility:I
    :goto_0
    if-nez v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mItemData:Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/actionbarsherlock/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 199
    iget-object v1, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    :cond_1
    return-void

    .line 192
    .end local v0           #newVisibility:I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    const/16 v1, 0x8

    .line 115
    if-eqz p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/actionbarsherlock/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
