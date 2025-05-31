.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;
.source "TextArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextAreaListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    return-void
.end method


# virtual methods
.method protected goEnd(Z)V
    .locals 3
    .param p1, "jump"    # Z

    .prologue
    .line 438
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 443
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v1, :cond_1

    .line 441
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    goto :goto_0
.end method

.method protected goHome(Z)V
    .locals 3
    .param p1, "jump"    # Z

    .prologue
    .line 429
    if-eqz p1, :cond_1

    .line 430
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    goto :goto_0
.end method

.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 7
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 379
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    .line 380
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v2

    .line 381
    .local v2, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    if-ne v5, v6, :cond_9

    .line 382
    const/4 v0, 0x0

    .line 383
    .local v0, "repeat":Z
    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v6, 0x3b

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v6, 0x3c

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    move v1, v3

    .line 384
    .local v1, "shift":Z
    :goto_0
    const/16 v4, 0x14

    if-ne p2, v4, :cond_5

    .line 385
    if-eqz v1, :cond_4

    .line 386
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    if-nez v4, :cond_1

    .line 387
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    .line 388
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iput-boolean v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    .line 393
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveCursorLine(I)V

    .line 394
    const/4 v0, 0x1

    .line 411
    :goto_2
    if-eqz v0, :cond_2

    .line 412
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->scheduleKeyRepeatTask(I)V

    .line 414
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    .line 417
    .end local v0    # "repeat":Z
    .end local v1    # "shift":Z
    :goto_3
    return v3

    .restart local v0    # "repeat":Z
    :cond_3
    move v1, v4

    .line 383
    goto :goto_0

    .line 391
    .restart local v1    # "shift":Z
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->clearSelection()V

    goto :goto_1

    .line 396
    :cond_5
    const/16 v4, 0x13

    if-ne p2, v4, :cond_8

    .line 397
    if-eqz v1, :cond_7

    .line 398
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-boolean v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    if-nez v4, :cond_6

    .line 399
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    .line 400
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iput-boolean v3, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    .line 405
    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveCursorLine(I)V

    .line 406
    const/4 v0, 0x1

    goto :goto_2

    .line 403
    :cond_7
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->clearSelection()V

    goto :goto_4

    .line 409
    :cond_8
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    goto :goto_2

    .end local v0    # "repeat":Z
    .end local v1    # "shift":Z
    :cond_9
    move v3, v4

    .line 417
    goto :goto_3
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "character"    # C

    .prologue
    .line 422
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z

    move-result v0

    .line 423
    .local v0, "result":Z
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    .line 424
    return v0
.end method

.method protected setCursorPosition(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 354
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    .line 356
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 357
    .local v0, "background":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 359
    .local v1, "font":Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getHeight()F

    move-result v2

    .line 361
    .local v2, "height":F
    if-eqz v0, :cond_0

    .line 362
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    sub-float/2addr v2, v3

    .line 363
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    sub-float/2addr p1, v3

    .line 365
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 366
    if-eqz v0, :cond_1

    .line 367
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    sub-float/2addr p2, v3

    .line 370
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    sub-float v4, v2, p2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 371
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    .line 373
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->setCursorPosition(FF)V

    .line 374
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    .line 375
    return-void
.end method
