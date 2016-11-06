.class public Lba/vaktija/android/wizard/LocationFragment;
.super Landroid/support/v4/app/Fragment;
.source "LocationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EXTRA_NO_WIZARD:Ljava/lang/String; = "EXTRA_NO_WIZARD"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field app:Lba/vaktija/android/App;

.field private locationId:I

.field private locationName:Ljava/lang/String;

.field mActivity:Landroid/support/v7/app/AppCompatActivity;

.field mListView:Landroid/widget/ListView;

.field next:Landroid/widget/Button;

.field noWizard:Z

.field prefs:Landroid/content/SharedPreferences;

.field prev:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lba/vaktija/android/wizard/LocationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 49
    const/16 v0, 0x6b

    iput v0, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    .line 50
    const-string v0, "Beč (Džemat Bosna)"

    iput-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->locationName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lba/vaktija/android/wizard/LocationFragment;I)I
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/wizard/LocationFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    return p1
.end method

.method static synthetic access$102(Lba/vaktija/android/wizard/LocationFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/wizard/LocationFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->locationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lba/vaktija/android/wizard/LocationFragment;)V
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/wizard/LocationFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lba/vaktija/android/wizard/LocationFragment;->saveSelectedLocation()V

    return-void
.end method

.method static synthetic access$300(Lba/vaktija/android/wizard/LocationFragment;)V
    .locals 0
    .param p0, "x0"    # Lba/vaktija/android/wizard/LocationFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lba/vaktija/android/wizard/LocationFragment;->replaceFragments()V

    return-void
.end method

.method private getHalfScreenHeight()I
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lba/vaktija/android/wizard/LocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 164
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0x1f4

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public static newInstance(Z)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p0, "noWizard"    # Z

    .prologue
    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "EXTRA_NO_WIZARD"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    new-instance v1, Lba/vaktija/android/wizard/LocationFragment;

    invoke-direct {v1}, Lba/vaktija/android/wizard/LocationFragment;-><init>()V

    .line 58
    .local v1, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 59
    return-object v1
.end method

.method private replaceFragments()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lba/vaktija/android/wizard/LocationFragment;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 205
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 206
    const v1, 0x7f04000c

    const v2, 0x7f04000d

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 209
    :cond_0
    const v1, 0x7f0e006b

    new-instance v2, Lba/vaktija/android/wizard/VakatTweaksFragment;

    invoke-direct {v2}, Lba/vaktija/android/wizard/VakatTweaksFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 210
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 211
    return-void
.end method

.method private saveSelectedLocation()V
    .locals 3

    .prologue
    .line 175
    sget-object v0, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locationId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selectedLocation"

    iget v2, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    .line 178
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "locationName"

    iget-object v2, p0, Lba/vaktija/android/wizard/LocationFragment;->locationName:Ljava/lang/String;

    .line 179
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 182
    iget-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->app:Lba/vaktija/android/App;

    const-string v1, "Odabrana lokacija"

    iget-object v2, p0, Lba/vaktija/android/wizard/LocationFragment;->locationName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lba/vaktija/android/App;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->app:Lba/vaktija/android/App;

    invoke-static {v0}, Lba/vaktija/android/models/PrayersSchedule;->getInstance(Landroid/content/Context;)Lba/vaktija/android/models/PrayersSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lba/vaktija/android/models/PrayersSchedule;->reset()V

    .line 186
    invoke-virtual {p0}, Lba/vaktija/android/wizard/LocationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lba/vaktija/android/util/Utils;->updateWidget(Landroid/content/Context;)V

    .line 188
    iget-boolean v0, p0, Lba/vaktija/android/wizard/LocationFragment;->noWizard:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 198
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->next:Landroid/widget/Button;

    new-instance v1, Lba/vaktija/android/wizard/LocationFragment$2;

    invoke-direct {v1, p0}, Lba/vaktija/android/wizard/LocationFragment$2;-><init>(Lba/vaktija/android/wizard/LocationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x6b

    const/4 v9, -0x1

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    sget-object v6, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    const-string v7, "onActivityCreated"

    invoke-static {v6, v7}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v6, p0, Lba/vaktija/android/wizard/LocationFragment;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lba/vaktija/android/wizard/LocationFragment;->prefs:Landroid/content/SharedPreferences;

    .line 96
    iget-object v6, p0, Lba/vaktija/android/wizard/LocationFragment;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v6}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v6

    const-string v7, "Lokacija"

    invoke-virtual {v6, v7}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v6, p0, Lba/vaktija/android/wizard/LocationFragment;->prev:Landroid/widget/Button;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object v6, p0, Lba/vaktija/android/wizard/LocationFragment;->next:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lba/vaktija/android/wizard/LocationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "EXTRA_NO_WIZARD"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lba/vaktija/android/wizard/LocationFragment;->noWizard:Z

    .line 103
    iget-boolean v6, p0, Lba/vaktija/android/wizard/LocationFragment;->noWizard:Z

    if-eqz v6, :cond_0

    .line 104
    invoke-virtual {p0}, Lba/vaktija/android/wizard/LocationFragment;->getView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0e00e2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 107
    :cond_0
    iget-object v6, p0, Lba/vaktija/android/wizard/LocationFragment;->app:Lba/vaktija/android/App;

    iget-object v6, v6, Lba/vaktija/android/App;->db:Lba/vaktija/android/db/Database;

    invoke-virtual {v6}, Lba/vaktija/android/db/Database;->getLocations()Ljava/util/List;

    move-result-object v2

    .line 108
    .local v2, "locations":Ljava/util/List;, "Ljava/util/List<Lba/vaktija/android/models/Location;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v3, "locationsList":Ljava/util/List;, "Ljava/util/List<Lba/vaktija/android/models/Location;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 111
    if-nez v1, :cond_1

    .line 112
    new-instance v6, Lba/vaktija/android/models/Location;

    const-string v7, "Bosna i Hercegovina"

    invoke-direct {v6, v7, v9}, Lba/vaktija/android/models/Location;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    if-ne v1, v10, :cond_2

    .line 116
    new-instance v6, Lba/vaktija/android/models/Location;

    const-string v7, "Sand\u017eak"

    invoke-direct {v6, v7, v9}, Lba/vaktija/android/models/Location;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v4, "sections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lba/vaktija/android/models/Location;>;"
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lba/vaktija/android/models/Location;

    const-string v8, "Bosna i Hercegovina"

    invoke-direct {v7, v8, v9}, Lba/vaktija/android/models/Location;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/16 v6, 0x6c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lba/vaktija/android/models/Location;

    const-string v8, "Sand\u017eak"

    invoke-direct {v7, v8, v9}, Lba/vaktija/android/models/Location;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Lba/vaktija/android/LocationsAdapter;

    iget-object v6, p0, Lba/vaktija/android/wizard/LocationFragment;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v6, v3}, Lba/vaktija/android/LocationsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 131
    .local v0, "adapter":Lba/vaktija/android/LocationsAdapter;
    invoke-virtual {v0, v4}, Lba/vaktija/android/LocationsAdapter;->setSections(Ljava/util/HashMap;)V

    .line 133
    iget-object v6, p0, Lba/vaktija/android/wizard/LocationFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v6, p0, Lba/vaktija/android/wizard/LocationFragment;->prefs:Landroid/content/SharedPreferences;

    const-string v7, "selectedLocation"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    .local v5, "selectedName":Ljava/lang/String;
    sget-object v6, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "locationId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " adapter.count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lba/vaktija/android/LocationsAdapter;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-object v6, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "selectedName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lba/vaktija/android/util/FileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v6, p0, Lba/vaktija/android/wizard/LocationFragment;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    invoke-virtual {v0, v7}, Lba/vaktija/android/LocationsAdapter;->getPositionForLocationId(I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 144
    iget-object v6, p0, Lba/vaktija/android/wizard/LocationFragment;->mListView:Landroid/widget/ListView;

    new-instance v7, Lba/vaktija/android/wizard/LocationFragment$1;

    invoke-direct {v7, p0}, Lba/vaktija/android/wizard/LocationFragment$1;-><init>(Lba/vaktija/android/wizard/LocationFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 159
    iget-object v6, p0, Lba/vaktija/android/wizard/LocationFragment;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lba/vaktija/android/wizard/LocationFragment;->locationId:I

    invoke-virtual {v0, v7}, Lba/vaktija/android/LocationsAdapter;->getPositionForLocationId(I)I

    move-result v7

    invoke-direct {p0}, Lba/vaktija/android/wizard/LocationFragment;->getHalfScreenHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 160
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 65
    sget-object v0, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lba/vaktija/android/App;

    iput-object v0, p0, Lba/vaktija/android/wizard/LocationFragment;->app:Lba/vaktija/android/App;

    .line 68
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lba/vaktija/android/wizard/LocationFragment;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    .line 69
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e00e4

    if-ne v0, v1, :cond_0

    .line 170
    invoke-direct {p0}, Lba/vaktija/android/wizard/LocationFragment;->saveSelectedLocation()V

    .line 172
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget-object v0, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lba/vaktija/android/wizard/LocationFragment;->setHasOptionsMenu(Z)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    sget-object v1, Lba/vaktija/android/wizard/LocationFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lba/vaktija/android/util/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lba/vaktija/android/wizard/LocationFragment;->mListView:Landroid/widget/ListView;

    .line 84
    const v1, 0x7f0e00e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lba/vaktija/android/wizard/LocationFragment;->next:Landroid/widget/Button;

    .line 85
    const v1, 0x7f0e00e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lba/vaktija/android/wizard/LocationFragment;->prev:Landroid/widget/Button;

    .line 87
    return-object v0
.end method
