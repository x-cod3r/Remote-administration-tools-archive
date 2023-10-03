.class public Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;
.super Landroid/widget/TextView;
.source "JellyBeanSpanFixTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method private addSpacesAroundSpansUntilFixed(Landroid/text/SpannableStringBuilder;II)Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;
    .locals 12
    .parameter "builder"
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 135
    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const-class v11, Ljava/lang/Object;

    invoke-virtual {p1, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 136
    .local v6, spans:[Ljava/lang/Object;
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v6

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    .local v8, spansWithSpacesBefore:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v7, Ljava/util/ArrayList;

    array-length v9, v6

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v7, spansWithSpacesAfter:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 140
    .local v3, span:Ljava/lang/Object;
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 141
    .local v5, spanStart:I
    add-int/lit8 v9, v5, -0x1

    invoke-direct {p0, p1, v9}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->isNotSpace(Ljava/lang/CharSequence;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 142
    const-string v9, " "

    invoke-virtual {p1, v5, v9}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 143
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_0
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 147
    .local v4, spanEnd:I
    invoke-direct {p0, p1, v4}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->isNotSpace(Ljava/lang/CharSequence;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 148
    const-string v9, " "

    invoke-virtual {p1, v4, v9}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 149
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V

    .line 154
    invoke-static {v8, v7}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;->fixed(Ljava/util/List;Ljava/util/List;)Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 161
    .end local v3           #span:Ljava/lang/Object;
    .end local v4           #spanEnd:I
    .end local v5           #spanStart:I
    :goto_1
    return-object v9

    .line 155
    .restart local v3       #span:Ljava/lang/Object;
    .restart local v4       #spanEnd:I
    .restart local v5       #spanStart:I
    :catch_0
    move-exception v9

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v3           #span:Ljava/lang/Object;
    .end local v4           #spanEnd:I
    .end local v5           #spanStart:I
    :cond_2
    invoke-static {}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;->notFixed()Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;

    move-result-object v9

    goto :goto_1
.end method

.method private fallbackToString(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 210
    invoke-virtual {p0}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, fallbackText:Ljava/lang/String;
    invoke-direct {p0, v0, p1, p2}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V

    .line 212
    return-void
.end method

.method private fixOnMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 98
    invoke-virtual {p0}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 99
    .local v1, text:Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 100
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 101
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    invoke-direct {p0, v0, p1, p2}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->fixSpannedWithSpaces(Landroid/text/SpannableStringBuilder;II)V

    .line 108
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-direct {p0, p1, p2}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->fallbackToString(II)V

    goto :goto_0
.end method

.method private fixSpannedWithSpaces(Landroid/text/SpannableStringBuilder;II)V
    .locals 4
    .parameter "builder"
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 117
    .local v1, startFix:J
    invoke-direct {p0, p1, p2, p3}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->addSpacesAroundSpansUntilFixed(Landroid/text/SpannableStringBuilder;II)Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;

    move-result-object v0

    .line 120
    .local v0, result:Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;
    iget-boolean v3, v0, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;->fixed:Z

    if-eqz v3, :cond_0

    .line 121
    invoke-direct {p0, p2, p3, p1, v0}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->removeUnneededSpaces(IILandroid/text/SpannableStringBuilder;Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;)V

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0, p2, p3}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->fallbackToString(II)V

    goto :goto_0
.end method

.method private isNotSpace(Ljava/lang/CharSequence;I)Z
    .locals 2
    .parameter "text"
    .parameter "where"

    .prologue
    .line 165
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeUnneededSpaces(IILandroid/text/SpannableStringBuilder;Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .parameter "builder"
    .parameter "result"

    .prologue
    .line 176
    iget-object v7, p4, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;->spansWithSpacesAfter:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 177
    .local v4, span:Ljava/lang/Object;
    invoke-virtual {p3, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 178
    .local v5, spanEnd:I
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p3, v5, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 180
    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, ignored:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, " "

    invoke-virtual {p3, v5, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 186
    .end local v1           #ignored:Ljava/lang/IndexOutOfBoundsException;
    .end local v4           #span:Ljava/lang/Object;
    .end local v5           #spanEnd:I
    :cond_0
    const/4 v2, 0x1

    .line 187
    .local v2, needReset:Z
    iget-object v7, p4, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView$FixingResult;->spansWithSpacesBefore:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 188
    .restart local v4       #span:Ljava/lang/Object;
    invoke-virtual {p3, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 189
    .local v6, spanStart:I
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p3, v7, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 191
    :try_start_1
    invoke-direct {p0, p3, p1, p2}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setTextAndMeasure(Ljava/lang/CharSequence;II)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    const/4 v2, 0x0

    goto :goto_1

    .line 193
    :catch_1
    move-exception v1

    .line 194
    .restart local v1       #ignored:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x1

    .line 195
    add-int/lit8 v3, v6, -0x1

    .line 196
    .local v3, newSpanStart:I
    const-string v7, " "

    invoke-virtual {p3, v3, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 200
    .end local v1           #ignored:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #newSpanStart:I
    .end local v4           #span:Ljava/lang/Object;
    .end local v6           #spanStart:I
    :cond_1
    if-eqz v2, :cond_2

    .line 201
    invoke-virtual {p0, p3}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 204
    :cond_2
    return-void
.end method

.method private setTextAndMeasure(Ljava/lang/CharSequence;II)V
    .locals 0
    .parameter "text"
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-super {p0, p2, p3}, Landroid/widget/TextView;->onMeasure(II)V

    .line 171
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 88
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-direct {p0, p1, p2}, Lnet/nightwhistler/htmlspanner/JellyBeanSpanFixTextView;->fixOnMeasure(II)V

    goto :goto_0
.end method
