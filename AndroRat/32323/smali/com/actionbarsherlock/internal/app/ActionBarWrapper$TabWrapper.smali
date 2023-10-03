.class public Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;
.super Lcom/actionbarsherlock/app/ActionBar$Tab;
.source "ActionBarWrapper.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/internal/app/ActionBarWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabWrapper"
.end annotation


# instance fields
.field private mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

.field final mNativeTab:Landroid/app/ActionBar$Tab;

.field private mTag:Ljava/lang/Object;

.field final synthetic this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;


# direct methods
.method public constructor <init>(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;Landroid/app/ActionBar$Tab;)V
    .locals 1
    .parameter
    .parameter "nativeTab"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    invoke-direct {p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    .line 219
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 220
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 320
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    if-eqz v1, :cond_1

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, trans:Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$0(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$0(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 324
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    invoke-interface {v1, p0, v0}, Lcom/actionbarsherlock/app/ActionBar$TabListener;->onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 329
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 330
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 333
    .end local v0           #trans:Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$1(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$0(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$0(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 340
    #setter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {v1, v0}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$2(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;Landroid/support/v4/app/FragmentTransaction;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$1(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/actionbarsherlock/app/ActionBar$TabListener;->onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 346
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$1(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$1(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {v0}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$1(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    const/4 v1, 0x0

    #setter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {v0, v1}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$2(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;Landroid/support/v4/app/FragmentTransaction;)V

    .line 353
    :cond_2
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 357
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    if-eqz v1, :cond_1

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, trans:Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$0(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    #getter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$0(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 361
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->this$0:Lcom/actionbarsherlock/internal/app/ActionBarWrapper;

    #setter for: Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {v1, v0}, Lcom/actionbarsherlock/internal/app/ActionBarWrapper;->access$2(Lcom/actionbarsherlock/internal/app/ActionBarWrapper;Landroid/support/v4/app/FragmentTransaction;)V

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    invoke-interface {v1, p0, v0}, Lcom/actionbarsherlock/app/ActionBar$TabListener;->onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V

    .line 367
    .end local v0           #trans:Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    return-void
.end method

.method public select()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 299
    return-void
.end method

.method public setContentDescription(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1
    .parameter "resId"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 304
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1
    .parameter "contentDesc"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 310
    return-object p0
.end method

.method public setCustomView(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1
    .parameter "layoutResId"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setCustomView(I)Landroid/app/ActionBar$Tab;

    .line 270
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1
    .parameter "view"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    .line 264
    return-object p0
.end method

.method public setIcon(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1
    .parameter "resId"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    .line 246
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1
    .parameter "icon"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    .line 240
    return-object p0
.end method

.method public setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 2
    .parameter "listener"

    .prologue
    .line 291
    iget-object v1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    if-eqz p1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 292
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mListener:Lcom/actionbarsherlock/app/ActionBar$TabListener;

    .line 293
    return-object p0

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 0
    .parameter "obj"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mTag:Ljava/lang/Object;

    .line 281
    return-object p0
.end method

.method public setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1
    .parameter "resId"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 258
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/actionbarsherlock/app/ActionBar$Tab;
    .locals 1
    .parameter "text"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/actionbarsherlock/internal/app/ActionBarWrapper$TabWrapper;->mNativeTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 252
    return-object p0
.end method
