.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$1;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "GLSurfaceView20.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;Landroid/view/View;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/view/View;
    .param p3, "x1"    # Z

    .prologue
    .line 76
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$1;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method

.method private sendDownUpKeyEventForBackwardCompatibility(I)V
    .locals 19
    .param p1, "code"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 96
    .local v4, "eventTime":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v4

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-super {v0, v3}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 98
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x6

    move-wide v10, v4

    move/from16 v13, p1

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-super {v0, v7}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 100
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 3
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/4 v1, 0x1

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 80
    .local v0, "sdkVersion":I
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 85
    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    .line 86
    const/16 v2, 0x43

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceView20$1;->sendDownUpKeyEventForBackwardCompatibility(I)V

    .line 90
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v1

    goto :goto_0
.end method
