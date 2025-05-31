.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "TextField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextFieldClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 5
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->getTapCount()I

    move-result v2

    rem-int/lit8 v1, v2, 0x4

    .line 716
    .local v1, "count":I
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 717
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 718
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->wordUnderCursor(F)[I

    move-result-object v0

    .line 719
    .local v0, "array":[I
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSelection(II)V

    .line 721
    .end local v0    # "array":[I
    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectAll()V

    .line 722
    :cond_2
    return-void
.end method

.method protected goEnd(Z)V
    .locals 2
    .param p1, "jump"    # Z

    .prologue
    .line 758
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 759
    return-void
.end method

.method protected goHome(Z)V
    .locals 2
    .param p1, "jump"    # Z

    .prologue
    .line 754
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 755
    return-void
.end method

.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 13
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode"    # I

    .prologue
    const/16 v12, 0x16

    const/16 v11, 0x15

    const/4 v10, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 762
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-eqz v7, :cond_1

    .line 855
    :cond_0
    :goto_0
    return v5

    .line 764
    :cond_1
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastBlink:J

    .line 765
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-boolean v5, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 767
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v3

    .line 768
    .local v3, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v7

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    if-ne v7, v8, :cond_0

    .line 770
    const/4 v2, 0x0

    .line 771
    .local v2, "repeat":Z
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v0

    .line 772
    .local v0, "ctrl":Z
    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-nez v7, :cond_4

    move v1, v6

    .line 774
    .local v1, "jump":Z
    :goto_1
    if-eqz v0, :cond_8

    .line 775
    const/16 v7, 0x32

    if-ne p2, v7, :cond_2

    .line 776
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste()V

    .line 777
    const/4 v2, 0x1

    .line 779
    :cond_2
    const/16 v7, 0x1f

    if-eq p2, v7, :cond_3

    const/16 v7, 0x85

    if-ne p2, v7, :cond_5

    .line 780
    :cond_3
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->copy()V

    move v5, v6

    .line 781
    goto :goto_0

    .end local v1    # "jump":Z
    :cond_4
    move v1, v5

    .line 772
    goto :goto_1

    .line 783
    .restart local v1    # "jump":Z
    :cond_5
    const/16 v7, 0x34

    if-eq p2, v7, :cond_6

    const/16 v7, 0x43

    if-ne p2, v7, :cond_7

    .line 784
    :cond_6
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cut()V

    move v5, v6

    .line 785
    goto :goto_0

    .line 787
    :cond_7
    const/16 v7, 0x1d

    if-ne p2, v7, :cond_8

    .line 788
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectAll()V

    move v5, v6

    .line 789
    goto :goto_0

    .line 793
    :cond_8
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 794
    const/16 v7, 0x85

    if-ne p2, v7, :cond_9

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste()V

    .line 795
    :cond_9
    const/16 v7, 0x70

    if-ne p2, v7, :cond_a

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v7, :cond_a

    .line 796
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->copy()V

    .line 797
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete()I

    .line 801
    :cond_a
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v4, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 804
    .local v4, "temp":I
    if-ne p2, v11, :cond_d

    .line 805
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7, v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    .line 806
    const/4 v2, 0x1

    .line 824
    :goto_2
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v7, :cond_b

    .line 825
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput v4, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 826
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-boolean v6, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 850
    .end local v4    # "temp":I
    :cond_b
    :goto_3
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v5, v9}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v5

    iput v5, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 852
    if-eqz v2, :cond_c

    .line 853
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->scheduleKeyRepeatTask(I)V

    :cond_c
    move v5, v6

    .line 855
    goto/16 :goto_0

    .line 809
    .restart local v4    # "temp":I
    :cond_d
    if-ne p2, v12, :cond_e

    .line 810
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7, v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    .line 811
    const/4 v2, 0x1

    .line 812
    goto :goto_2

    .line 814
    :cond_e
    if-ne p2, v10, :cond_f

    .line 815
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->goHome(Z)V

    goto :goto_2

    .line 818
    :cond_f
    const/16 v7, 0x84

    if-ne p2, v7, :cond_b

    .line 819
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->goEnd(Z)V

    goto :goto_2

    .line 831
    .end local v4    # "temp":I
    :cond_10
    if-ne p2, v11, :cond_11

    .line 832
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7, v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    .line 833
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 834
    const/4 v2, 0x1

    .line 836
    :cond_11
    if-ne p2, v12, :cond_12

    .line 837
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7, v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    .line 838
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 839
    const/4 v2, 0x1

    .line 841
    :cond_12
    if-ne p2, v10, :cond_13

    .line 842
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->goHome(Z)V

    .line 843
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    .line 845
    :cond_13
    const/16 v7, 0x84

    if-ne p2, v7, :cond_b

    .line 846
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->goEnd(Z)V

    .line 847
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    goto :goto_3
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 13
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "character"    # C

    .prologue
    .line 873
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    .line 913
    :goto_0
    return v7

    .line 874
    :cond_0
    if-nez p2, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    .line 876
    :cond_1
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v6

    .line 877
    .local v6, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v7

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    if-eq v7, v8, :cond_3

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 879
    :cond_3
    const/16 v7, 0x9

    if-eq p2, v7, :cond_4

    const/16 v7, 0xa

    if-ne p2, v7, :cond_7

    :cond_4
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focusTraversal:Z

    if-eqz v7, :cond_7

    .line 880
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->next(Z)V

    .line 912
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-interface {v7, v8, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)V

    .line 913
    :cond_6
    const/4 v7, 0x1

    goto :goto_0

    .line 882
    :cond_7
    const/16 v7, 0x7f

    if-ne p2, v7, :cond_d

    const/4 v2, 0x1

    .line 883
    .local v2, "delete":Z
    :goto_2
    const/16 v7, 0x8

    if-ne p2, v7, :cond_e

    const/4 v1, 0x1

    .line 884
    .local v1, "backspace":Z
    :goto_3
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v7, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->containsCharacter(C)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->writeEnters:Z

    if-eqz v7, :cond_f

    const/16 v7, 0xa

    if-eq p2, v7, :cond_8

    const/16 v7, 0xd

    if-ne p2, v7, :cond_f

    :cond_8
    const/4 v0, 0x1

    .line 886
    .local v0, "add":Z
    :goto_4
    if-nez v1, :cond_9

    if-eqz v2, :cond_10

    :cond_9
    const/4 v5, 0x1

    .line 887
    .local v5, "remove":Z
    :goto_5
    if-nez v0, :cond_a

    if-eqz v5, :cond_5

    .line 888
    :cond_a
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v7, :cond_11

    .line 889
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete(Z)I

    move-result v8

    iput v8, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 899
    :cond_b
    :goto_6
    if-eqz v0, :cond_16

    if-nez v5, :cond_16

    .line 901
    const/16 v7, 0xd

    if-eq p2, v7, :cond_c

    const/16 v7, 0xa

    if-ne p2, v7, :cond_13

    :cond_c
    const/4 v4, 0x1

    .line 902
    .local v4, "isEnter":Z
    :goto_7
    if-nez v4, :cond_14

    .line 903
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-interface {v7, v8, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;->acceptChar(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)Z

    move-result v7

    if-nez v7, :cond_14

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 882
    .end local v0    # "add":Z
    .end local v1    # "backspace":Z
    .end local v2    # "delete":Z
    .end local v4    # "isEnter":Z
    .end local v5    # "remove":Z
    :cond_d
    const/4 v2, 0x0

    goto :goto_2

    .line 883
    .restart local v2    # "delete":Z
    :cond_e
    const/4 v1, 0x0

    goto :goto_3

    .line 884
    .restart local v1    # "backspace":Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_4

    .line 886
    .restart local v0    # "add":Z
    :cond_10
    const/4 v5, 0x0

    goto :goto_5

    .line 891
    .restart local v5    # "remove":Z
    :cond_11
    if-eqz v1, :cond_12

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-lez v7, :cond_12

    .line 892
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v11, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v12, v11, -0x1

    iput v12, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 893
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v8, 0x0

    iput v8, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    .line 895
    :cond_12
    if-eqz v2, :cond_b

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 896
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v11, v11, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    goto/16 :goto_6

    .line 901
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 905
    .restart local v4    # "isEnter":Z
    :cond_14
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->withinMaxLength(I)Z

    move-result v7

    if-nez v7, :cond_15

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 906
    :cond_15
    if-eqz v4, :cond_17

    const-string v3, "\n"

    .line 907
    .local v3, "insertion":Ljava/lang/String;
    :goto_8
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v10, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v8, v10, v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->insert(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    .line 909
    .end local v3    # "insertion":Ljava/lang/String;
    .end local v4    # "isEnter":Z
    :cond_16
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    goto/16 :goto_1

    .line 906
    .restart local v4    # "isEnter":Z
    :cond_17
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "keycode"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 869
    :goto_0
    return v0

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->cancel()V

    .line 869
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected scheduleKeyRepeatTask(I)V
    .locals 3
    .param p1, "keycode"    # I

    .prologue
    .line 859
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->keycode:I

    if-eq v0, p1, :cond_1

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->keycode:I

    .line 861
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->cancel()V

    .line 862
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    sget v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatInitialTime:F

    sget v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTime:F

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    .line 864
    :cond_1
    return-void
.end method

.method protected setCursorPosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 748
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastBlink:J

    .line 749
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    .line 750
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->letterUnderCursor(F)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    .line 751
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 4
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 725
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result v3

    if-nez v3, :cond_1

    .line 734
    :cond_0
    :goto_0
    return v1

    .line 726
    :cond_1
    if-nez p4, :cond_2

    if-nez p5, :cond_0

    .line 727
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    .line 728
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->setCursorPosition(FF)V

    .line 729
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iput v3, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    .line 730
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    .line 731
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 732
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;->show(Z)V

    .line 733
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-boolean v2, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    move v1, v2

    .line 734
    goto :goto_0
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    .line 738
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    .line 739
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->setCursorPosition(FF)V

    .line 740
    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .line 743
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    .line 744
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    .line 745
    return-void
.end method
