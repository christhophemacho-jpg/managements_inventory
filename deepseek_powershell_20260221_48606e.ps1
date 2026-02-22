# Se placer dans le dossier où créer le projet
cd C:\chemin\vers\vos\projets

# Créer le dossier racine
New-Item -ItemType Directory -Path "inventory-management-frontend" -Force
cd inventory-management-frontend

# === CRÉATION DE TOUS LES DOSSIERS ===
$folders = @(
    "public",
    "src\assets\images\icons",
    "src\assets\fonts",
    "src\assets\styles",
    "src\components\common\Button",
    "src\components\common\Input",
    "src\components\common\Modal",
    "src\components\common\Card",
    "src\components\common\Table",
    "src\components\common\Loader",
    "src\components\common\Alert",
    "src\components\common\Pagination",
    "src\components\common\Select",
    "src\components\common\DatePicker",
    "src\components\common\Badge",
    "src\components\common\Tooltip",
    "src\components\common\Tabs",
    "src\components\layout\Sidebar",
    "src\components\layout\Navbar",
    "src\components\layout\Footer",
    "src\components\layout\MainLayout",
    "src\components\features\Auth\LoginForm",
    "src\components\features\Auth\RegisterForm",
    "src\components\features\Auth\ForgotPassword",
    "src\components\features\Auth\ResetPassword",
    "src\components\features\Dashboard\StatsCards",
    "src\components\features\Dashboard\RecentActivity",
    "src\components\features\Dashboard\Charts",
    "src\components\features\Dashboard\QuickActions",
    "src\components\features\Products\ProductList",
    "src\components\features\Products\ProductForm",
    "src\components\features\Products\ProductDetails",
    "src\components\features\Products\BarcodeScanner",
    "src\components\features\Products\CategoryManager",
    "src\components\features\Invoices\InvoiceList",
    "src\components\features\Invoices\InvoiceForm",
    "src\components\features\Invoices\InvoiceDetails",
    "src\components\features\Invoices\POS",
    "src\components\features\Customers\CustomerList",
    "src\components\features\Customers\CustomerForm",
    "src\components\features\Customers\CustomerDetails",
    "src\components\features\Expenses\ExpenseList",
    "src\components\features\Expenses\ExpenseForm",
    "src\components\features\Expenses\ExpenseCategories",
    "src\components\features\Stock\StockMovements",
    "src\components\features\Stock\StockAdjustment",
    "src\components\features\Stock\LowStockAlert",
    "src\components\features\Reports\SalesReport",
    "src\components\features\Reports\ProfitLoss",
    "src\components\features\Reports\InventoryReport",
    "src\components\features\Reports\ReportFilters",
    "src\components\features\Settings\CompanySettings",
    "src\components\features\Settings\UserManagement",
    "src\pages\Auth",
    "src\pages\Dashboard",
    "src\pages\Products",
    "src\pages\Categories",
    "src\pages\Invoices",
    "src\pages\Customers",
    "src\pages\Expenses",
    "src\pages\Stock",
    "src\pages\Reports",
    "src\pages\Settings",
    "src\pages\NotFound",
    "src\services\api",
    "src\services\socket",
    "src\store\slices",
    "src\hooks",
    "src\utils",
    "src\contexts",
    "src\routes"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force
}

# === CRÉATION DES FICHIERS PUBLICS ===
New-Item -ItemType File -Path "public\index.html" -Force
New-Item -ItemType File -Path "public\manifest.json" -Force
New-Item -ItemType File -Path "public\robots.txt" -Force
New-Item -ItemType File -Path "public\favicon.ico" -Force
New-Item -ItemType File -Path "public\logo192.png" -Force

# === CRÉATION DES FICHIERS ASSETS ===
New-Item -ItemType File -Path "src\assets\styles\_variables.scss" -Force
New-Item -ItemType File -Path "src\assets\styles\_mixins.scss" -Force
New-Item -ItemType File -Path "src\assets\styles\_animations.scss" -Force
New-Item -ItemType File -Path "src\assets\styles\global.scss" -Force

New-Item -ItemType File -Path "src\assets\images\logo.png" -Force
New-Item -ItemType File -Path "src\assets\images\default-avatar.png" -Force
New-Item -ItemType File -Path "src\assets\images\no-image.png" -Force

$svgIcons = @("dashboard", "products", "invoices", "customers", "reports")
foreach ($icon in $svgIcons) {
    New-Item -ItemType File -Path "src\assets\images\icons\$icon.svg" -Force
}

# === CRÉATION DES FICHIERS COMPOSANTS COMMUNS ===
$commonComponents = @("Button", "Input", "Modal", "Card", "Table", "Loader", "Alert", "Pagination", "Select", "DatePicker", "Badge", "Tooltip", "Tabs")
foreach ($comp in $commonComponents) {
    New-Item -ItemType File -Path "src\components\common\$comp\$comp.jsx" -Force
    New-Item -ItemType File -Path "src\components\common\$comp\$comp.module.scss" -Force
    New-Item -ItemType File -Path "src\components\common\$comp\index.js" -Force
}

# === CRÉATION DES FICHIERS LAYOUT ===
New-Item -ItemType File -Path "src\components\layout\Sidebar\Sidebar.jsx" -Force
New-Item -ItemType File -Path "src\components\layout\Sidebar\Sidebar.module.scss" -Force
New-Item -ItemType File -Path "src\components\layout\Sidebar\SidebarData.js" -Force
New-Item -ItemType File -Path "src\components\layout\Sidebar\SidebarItem.jsx" -Force
New-Item -ItemType File -Path "src\components\layout\Sidebar\index.js" -Force

New-Item -ItemType File -Path "src\components\layout\Navbar\Navbar.jsx" -Force
New-Item -ItemType File -Path "src\components\layout\Navbar\Navbar.module.scss" -Force
New-Item -ItemType File -Path "src\components\layout\Navbar\UserMenu.jsx" -Force
New-Item -ItemType File -Path "src\components\layout\Navbar\NotificationBell.jsx" -Force
New-Item -ItemType File -Path "src\components\layout\Navbar\index.js" -Force

New-Item -ItemType File -Path "src\components\layout\Footer\Footer.jsx" -Force
New-Item -ItemType File -Path "src\components\layout\Footer\Footer.module.scss" -Force
New-Item -ItemType File -Path "src\components\layout\Footer\index.js" -Force

New-Item -ItemType File -Path "src\components\layout\MainLayout\MainLayout.jsx" -Force
New-Item -ItemType File -Path "src\components\layout\MainLayout\MainLayout.module.scss" -Force
New-Item -ItemType File -Path "src\components\layout\MainLayout\index.js" -Force

# === CRÉATION DES FICHIERS FEATURES AUTH ===
New-Item -ItemType File -Path "src\components\features\Auth\LoginForm\LoginForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Auth\LoginForm\LoginForm.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Auth\LoginForm\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Auth\RegisterForm\RegisterForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Auth\RegisterForm\RegisterForm.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Auth\RegisterForm\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Auth\ForgotPassword\ForgotPasswordForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Auth\ForgotPassword\ForgotPasswordForm.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Auth\ForgotPassword\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Auth\ResetPassword\ResetPasswordForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Auth\ResetPassword\ResetPasswordForm.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Auth\ResetPassword\index.js" -Force

# === CRÉATION DES FICHIERS FEATURES DASHBOARD ===
New-Item -ItemType File -Path "src\components\features\Dashboard\StatsCards\StatsCards.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Dashboard\StatsCards\StatsCards.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Dashboard\StatsCards\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Dashboard\RecentActivity\RecentActivity.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Dashboard\RecentActivity\RecentActivity.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Dashboard\RecentActivity\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Dashboard\Charts\SalesChart.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Dashboard\Charts\ProfitChart.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Dashboard\Charts\TopProductsChart.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Dashboard\Charts\Charts.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Dashboard\Charts\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Dashboard\QuickActions\QuickActions.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Dashboard\QuickActions\QuickActions.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Dashboard\QuickActions\index.js" -Force

# === CRÉATION DES FICHIERS FEATURES PRODUCTS ===
New-Item -ItemType File -Path "src\components\features\Products\ProductList\ProductList.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\ProductList\ProductList.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Products\ProductList\ProductTable.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\ProductList\ProductFilters.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\ProductList\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Products\ProductForm\ProductForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\ProductForm\ProductForm.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Products\ProductForm\BasicInfoTab.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\ProductForm\StockTab.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\ProductForm\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Products\ProductDetails\ProductDetails.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\ProductDetails\ProductDetails.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Products\ProductDetails\ProductInfo.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\ProductDetails\StockHistory.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\ProductDetails\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Products\BarcodeScanner\BarcodeScanner.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\BarcodeScanner\BarcodeScanner.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Products\BarcodeScanner\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Products\CategoryManager\CategoryManager.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\CategoryManager\CategoryList.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\CategoryManager\CategoryForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Products\CategoryManager\CategoryManager.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Products\CategoryManager\index.js" -Force

# === CRÉATION DES FICHIERS FEATURES INVOICES ===
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceList\InvoiceList.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceList\InvoiceList.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceList\InvoiceTable.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceList\InvoiceFilters.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceList\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceForm\InvoiceForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceForm\InvoiceForm.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceForm\CustomerInfo.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceForm\InvoiceItems.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceForm\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceDetails\InvoiceDetails.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceDetails\InvoiceDetails.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceDetails\InvoiceHeader.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceDetails\InvoiceItemsTable.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceDetails\InvoiceSummary.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\InvoiceDetails\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Invoices\POS\POS.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\POS\POS.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\POS\Cart.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\POS\CartItem.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\POS\PaymentModal.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\POS\ProductSearch.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Invoices\POS\index.js" -Force

# === CRÉATION DES FICHIERS FEATURES CUSTOMERS ===
New-Item -ItemType File -Path "src\components\features\Customers\CustomerList\CustomerList.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Customers\CustomerList\CustomerList.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Customers\CustomerList\CustomerTable.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Customers\CustomerList\CustomerFilters.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Customers\CustomerList\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Customers\CustomerForm\CustomerForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Customers\CustomerForm\CustomerForm.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Customers\CustomerForm\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Customers\CustomerDetails\CustomerDetails.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Customers\CustomerDetails\CustomerDetails.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Customers\CustomerDetails\CustomerInfo.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Customers\CustomerDetails\PurchaseHistory.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Customers\CustomerDetails\index.js" -Force

# === CRÉATION DES FICHIERS FEATURES EXPENSES ===
New-Item -ItemType File -Path "src\components\features\Expenses\ExpenseList\ExpenseList.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Expenses\ExpenseList\ExpenseList.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Expenses\ExpenseList\ExpenseTable.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Expenses\ExpenseList\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Expenses\ExpenseForm\ExpenseForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Expenses\ExpenseForm\ExpenseForm.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Expenses\ExpenseForm\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Expenses\ExpenseCategories\ExpenseCategories.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Expenses\ExpenseCategories\ExpenseCategories.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Expenses\ExpenseCategories\index.js" -Force

# === CRÉATION DES FICHIERS FEATURES STOCK ===
New-Item -ItemType File -Path "src\components\features\Stock\StockMovements\StockMovements.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Stock\StockMovements\StockMovements.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Stock\StockMovements\MovementsTable.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Stock\StockMovements\MovementsFilters.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Stock\StockMovements\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Stock\StockAdjustment\StockAdjustment.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Stock\StockAdjustment\StockAdjustment.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Stock\StockAdjustment\AdjustmentForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Stock\StockAdjustment\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Stock\LowStockAlert\LowStockAlert.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Stock\LowStockAlert\LowStockAlert.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Stock\LowStockAlert\AlertCard.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Stock\LowStockAlert\index.js" -Force

# === CRÉATION DES FICHIERS FEATURES REPORTS ===
New-Item -ItemType File -Path "src\components\features\Reports\SalesReport\SalesReport.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Reports\SalesReport\SalesReport.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Reports\SalesReport\SalesChart.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Reports\SalesReport\SalesSummary.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Reports\SalesReport\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Reports\ProfitLoss\ProfitLoss.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Reports\ProfitLoss\ProfitLoss.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Reports\ProfitLoss\ProfitChart.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Reports\ProfitLoss\ExpensesBreakdown.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Reports\ProfitLoss\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Reports\InventoryReport\InventoryReport.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Reports\InventoryReport\InventoryReport.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Reports\InventoryReport\StockValue.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Reports\InventoryReport\CategoryBreakdown.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Reports\InventoryReport\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Reports\ReportFilters\ReportFilters.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Reports\ReportFilters\ReportFilters.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Reports\ReportFilters\index.js" -Force

# === CRÉATION DES FICHIERS FEATURES SETTINGS ===
New-Item -ItemType File -Path "src\components\features\Settings\CompanySettings\CompanySettings.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Settings\CompanySettings\CompanySettings.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Settings\CompanySettings\CompanyInfoForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Settings\CompanySettings\PreferencesForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Settings\CompanySettings\index.js" -Force

New-Item -ItemType File -Path "src\components\features\Settings\UserManagement\UserManagement.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Settings\UserManagement\UserManagement.module.scss" -Force
New-Item -ItemType File -Path "src\components\features\Settings\UserManagement\UserList.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Settings\UserManagement\UserForm.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Settings\UserManagement\PermissionsManager.jsx" -Force
New-Item -ItemType File -Path "src\components\features\Settings\UserManagement\index.js" -Force

# === CRÉATION DES PAGES ===
$pages = @(
    "Auth\LoginPage",
    "Auth\RegisterPage",
    "Auth\ForgotPasswordPage",
    "Auth\ResetPasswordPage",
    "Dashboard\DashboardPage",
    "Products\ProductsPage",
    "Products\CreateProductPage",
    "Products\EditProductPage",
    "Products\ProductDetailsPage",
    "Categories\CategoriesPage",
    "Invoices\InvoicesPage",
    "Invoices\CreateInvoicePage",
    "Invoices\InvoiceDetailsPage",
    "Invoices\POSPage",
    "Customers\CustomersPage",
    "Customers\CustomerDetailsPage",
    "Expenses\ExpensesPage",
    "Expenses\CreateExpensePage",
    "Stock\StockMovementsPage",
    "Stock\StockAdjustmentPage",
    "Reports\ReportsPage",
    "Reports\ReportDetailsPage",
    "Settings\SettingsPage",
    "Settings\UsersPage",
    "NotFound\NotFoundPage"
)

foreach ($page in $pages) {
    $pageName = ($page -split '\\')[-1]
    New-Item -ItemType File -Path "src\pages\$page.jsx" -Force
    New-Item -ItemType File -Path "src\pages\$($page -replace '\.jsx$', '').module.scss" -Force
}

# Fichiers index.js pour chaque dossier de pages
New-Item -ItemType File -Path "src\pages\Auth\index.js" -Force
New-Item -ItemType File -Path "src\pages\Dashboard\index.js" -Force
New-Item -ItemType File -Path "src\pages\Products\index.js" -Force
New-Item -ItemType File -Path "src\pages\Categories\index.js" -Force
New-Item -ItemType File -Path "src\pages\Invoices\index.js" -Force
New-Item -ItemType File -Path "src\pages\Customers\index.js" -Force
New-Item -ItemType File -Path "src\pages\Expenses\index.js" -Force
New-Item -ItemType File -Path "src\pages\Stock\index.js" -Force
New-Item -ItemType File -Path "src\pages\Reports\index.js" -Force
New-Item -ItemType File -Path "src\pages\Settings\index.js" -Force
New-Item -ItemType File -Path "src\pages\NotFound\index.js" -Force

# === CRÉATION DES SERVICES API ===
New-Item -ItemType File -Path "src\services\api\axiosConfig.js" -Force

$services = @(
    "authService", "userService", "productService", "categoryService", 
    "customerService", "invoiceService", "expenseService", "stockService", 
    "reportService", "companyService", "subscriptionService"
)

foreach ($service in $services) {
    New-Item -ItemType File -Path "src\services\api\$service.js" -Force
}

New-Item -ItemType File -Path "src\services\api\index.js" -Force
New-Item -ItemType File -Path "src\services\socket\socketService.js" -Force

# === CRÉATION DES SLICES REDUX ===
$slices = @("authSlice", "productSlice", "cartSlice", "invoiceSlice", "customerSlice", "uiSlice")
foreach ($slice in $slices) {
    New-Item -ItemType File -Path "src\store\slices\$slice.js" -Force
}
New-Item -ItemType File -Path "src\store\slices\index.js" -Force
New-Item -ItemType File -Path "src\store\store.js" -Force
New-Item -ItemType File -Path "src\store\hooks.js" -Force

# === CRÉATION DES HOOKS ===
$hooks = @("useAuth", "useProducts", "useDebounce", "useLocalStorage", "usePermissions", "useClickOutside", "useWindowSize")
foreach ($hook in $hooks) {
    New-Item -ItemType File -Path "src\hooks\$hook.js" -Force
}
New-Item -ItemType File -Path "src\hooks\index.js" -Force

# === CRÉATION DES UTILS ===
New-Item -ItemType File -Path "src\utils\constants.js" -Force
New-Item -ItemType File -Path "src\utils\formatters.js" -Force
New-Item -ItemType File -Path "src\utils\validators.js" -Force
New-Item -ItemType File -Path "src\utils\permissions.js" -Force
New-Item -ItemType File -Path "src\utils\helpers.js" -Force
New-Item -ItemType File -Path "src\utils\index.js" -Force

# === CRÉATION DES CONTEXTES ===
New-Item -ItemType File -Path "src\contexts\AuthContext.jsx" -Force
New-Item -ItemType File -Path "src\contexts\ThemeContext.jsx" -Force
New-Item -ItemType File -Path "src\contexts\SocketContext.jsx" -Force
New-Item -ItemType File -Path "src\contexts\index.js" -Force

# === CRÉATION DES ROUTES ===
New-Item -ItemType File -Path "src\routes\AppRoutes.jsx" -Force
New-Item -ItemType File -Path "src\routes\PrivateRoute.jsx" -Force
New-Item -ItemType File -Path "src\routes\PublicRoute.jsx" -Force
New-Item -ItemType File -Path "src\routes\index.js" -Force

# === FICHIERS PRINCIPAUX ===
New-Item -ItemType File -Path "src\App.jsx" -Force
New-Item -ItemType File -Path "src\App.test.js" -Force
New-Item -ItemType File -Path "src\index.js" -Force
New-Item -ItemType File -Path "src\index.scss" -Force
New-Item -ItemType File -Path "src\setupTests.js" -Force

# === FICHIERS RACINE ===
New-Item -ItemType File -Path ".env" -Force
New-Item -ItemType File -Path ".env.example" -Force
New-Item -ItemType File -Path ".gitignore" -Force
New-Item -ItemType File -Path ".eslintrc.js" -Force
New-Item -ItemType File -Path ".prettierrc" -Force
New-Item -ItemType File -Path "package.json" -Force
New-Item -ItemType File -Path "package-lock.json" -Force
New-Item -ItemType File -Path "README.md" -Force
New-Item -ItemType File -Path "jsconfig.json" -Force
New-Item -ItemType File -Path "craco.config.js" -Force
New-Item -ItemType File -Path ".env.development" -Force
New-Item -ItemType File -Path ".env.production" -Force

Write-Host "========================================" -ForegroundColor Green
Write-Host "✅ Structure complète créée avec succès!" -ForegroundColor Green
Write-Host "📁 Emplacement: $((Get-Location).Path)" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Green